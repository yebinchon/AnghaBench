; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.faulty_conf* }
%struct.faulty_conf = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, %struct.bio*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@WriteAll = common dso_local global i64 0, align 8
@WritePersistent = common dso_local global i32 0, align 4
@WriteTransient = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@ReadTransient = common dso_local global i32 0, align 4
@ReadPersistent = common dso_local global i32 0, align 4
@ReadFixable = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@faulty_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @faulty_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faulty_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.faulty_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.faulty_conf*, %struct.faulty_conf** %10, align 8
  store %struct.faulty_conf* %11, %struct.faulty_conf** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i64 @bio_data_dir(%struct.bio* %12)
  %14 = load i64, i64* @WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %18 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @WriteAll, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_io_error(%struct.bio* %25)
  store i32 1, i32* %3, align 4
  br label %138

27:                                               ; preds = %16
  %28 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = call i32 @bio_end_sector(%struct.bio* %33)
  %35 = load i64, i64* @WRITE, align 8
  %36 = call i64 @check_sector(%struct.faulty_conf* %28, i32 %32, i32 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %41 = load i32, i32* @WritePersistent, align 4
  %42 = call i64 @check_mode(%struct.faulty_conf* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WritePersistent, align 4
  %51 = call i32 @add_sector(%struct.faulty_conf* %45, i32 %49, i32 %50)
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %54 = load i32, i32* @WriteTransient, align 4
  %55 = call i64 @check_mode(%struct.faulty_conf* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %52
  br label %104

59:                                               ; preds = %2
  %60 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = call i32 @bio_end_sector(%struct.bio* %65)
  %67 = load i64, i64* @READ, align 8
  %68 = call i64 @check_sector(%struct.faulty_conf* %60, i32 %64, i32 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %73 = load i32, i32* @ReadTransient, align 4
  %74 = call i64 @check_mode(%struct.faulty_conf* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %79 = load i32, i32* @ReadPersistent, align 4
  %80 = call i64 @check_mode(%struct.faulty_conf* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ReadPersistent, align 4
  %89 = call i32 @add_sector(%struct.faulty_conf* %83, i32 %87, i32 %88)
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %92 = load i32, i32* @ReadFixable, align 4
  %93 = call i64 @check_mode(%struct.faulty_conf* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ReadFixable, align 4
  %102 = call i32 @add_sector(%struct.faulty_conf* %96, i32 %100, i32 %101)
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %95, %90
  br label %104

104:                                              ; preds = %103, %58
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = load i32, i32* @GFP_NOIO, align 4
  %110 = load %struct.mddev*, %struct.mddev** %4, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 0
  %112 = call %struct.bio* @bio_clone_fast(%struct.bio* %108, i32 %109, i32* %111)
  store %struct.bio* %112, %struct.bio** %8, align 8
  %113 = load %struct.bio*, %struct.bio** %8, align 8
  %114 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %115 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bio_set_dev(%struct.bio* %113, i32 %118)
  %120 = load %struct.bio*, %struct.bio** %5, align 8
  %121 = load %struct.bio*, %struct.bio** %8, align 8
  %122 = getelementptr inbounds %struct.bio, %struct.bio* %121, i32 0, i32 1
  store %struct.bio* %120, %struct.bio** %122, align 8
  %123 = load i32, i32* @faulty_fail, align 4
  %124 = load %struct.bio*, %struct.bio** %8, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %126, %struct.bio** %5, align 8
  br label %135

127:                                              ; preds = %104
  %128 = load %struct.bio*, %struct.bio** %5, align 8
  %129 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %130 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @bio_set_dev(%struct.bio* %128, i32 %133)
  br label %135

135:                                              ; preds = %127, %107
  %136 = load %struct.bio*, %struct.bio** %5, align 8
  %137 = call i32 @generic_make_request(%struct.bio* %136)
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %24
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i64 @check_sector(%struct.faulty_conf*, i32, i32, i64) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i64 @check_mode(%struct.faulty_conf*, i32) #1

declare dso_local i32 @add_sector(%struct.faulty_conf*, i32, i32) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

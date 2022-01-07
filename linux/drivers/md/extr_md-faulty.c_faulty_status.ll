; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mddev = type { %struct.faulty_conf* }
%struct.faulty_conf = type { i32, i32*, i32* }

@WriteTransient = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c" WriteTransient=%d(%d)\00", align 1
@ReadTransient = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c" ReadTransient=%d(%d)\00", align 1
@WritePersistent = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c" WritePersistent=%d(%d)\00", align 1
@ReadPersistent = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c" ReadPersistent=%d(%d)\00", align 1
@ReadFixable = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c" ReadFixable=%d(%d)\00", align 1
@WriteAll = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c" WriteAll\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" nfaults=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.mddev*)* @faulty_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @faulty_status(%struct.seq_file* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.faulty_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %7 = load %struct.mddev*, %struct.mddev** %4, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = load %struct.faulty_conf*, %struct.faulty_conf** %8, align 8
  store %struct.faulty_conf* %9, %struct.faulty_conf** %5, align 8
  %10 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %11 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @WriteTransient, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %21 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @WriteTransient, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %29 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @ReadTransient, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @atomic_read(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %39 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ReadTransient, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %35, %27
  %46 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %47 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @WritePersistent, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @atomic_read(i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %57 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @WritePersistent, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %53, %45
  %64 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %65 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @ReadPersistent, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = call i32 @atomic_read(i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %75 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @ReadPersistent, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %71, %63
  %82 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %83 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @ReadFixable, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = call i32 @atomic_read(i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %93 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @ReadFixable, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %97)
  br label %99

99:                                               ; preds = %89, %81
  %100 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %101 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @WriteAll, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = call i32 @atomic_read(i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load %struct.faulty_conf*, %struct.faulty_conf** %5, align 8
  %113 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

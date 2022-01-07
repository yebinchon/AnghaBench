; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.r1conf = type { %struct.mddev*, %struct.TYPE_2__* }
%struct.mddev = type { i64 }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r1bio = type { i64, i32, i64, %struct.bio*, i32, %struct.bio** }

@R1BIO_ReadError = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@IO_BLOCKED = common dso_local global %struct.bio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @handle_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_read_error(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.md_rdev*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  %8 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %9 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %8, i32 0, i32 0
  %10 = load %struct.mddev*, %struct.mddev** %9, align 8
  store %struct.mddev* %10, %struct.mddev** %5, align 8
  %11 = load i32, i32* @R1BIO_ReadError, align 4
  %12 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %13 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %12, i32 0, i32 2
  %14 = call i32 @clear_bit(i32 %11, i64* %13)
  %15 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 5
  %17 = load %struct.bio**, %struct.bio*** %16, align 8
  %18 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %19 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.bio*, %struct.bio** %17, i64 %20
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  store %struct.bio* %22, %struct.bio** %6, align 8
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = call i32 @bio_put(%struct.bio* %23)
  %25 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %26 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %25, i32 0, i32 5
  %27 = load %struct.bio**, %struct.bio*** %26, align 8
  %28 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %29 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.bio*, %struct.bio** %27, i64 %30
  store %struct.bio* null, %struct.bio** %31, align 8
  %32 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %33 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %36 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.md_rdev*, %struct.md_rdev** %39, align 8
  store %struct.md_rdev* %40, %struct.md_rdev** %7, align 8
  %41 = load %struct.mddev*, %struct.mddev** %5, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %2
  %46 = load i32, i32* @FailFast, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %53 = call i32 @freeze_array(%struct.r1conf* %52, i32 1)
  %54 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %55 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %56 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %59 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %62 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fix_read_error(%struct.r1conf* %54, i64 %57, i32 %60, i32 %63)
  %65 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %66 = call i32 @unfreeze_array(%struct.r1conf* %65)
  br label %92

67:                                               ; preds = %45, %2
  %68 = load %struct.mddev*, %struct.mddev** %5, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @FailFast, align 4
  %74 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 0
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.mddev*, %struct.mddev** %5, align 8
  %80 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %81 = call i32 @md_error(%struct.mddev* %79, %struct.md_rdev* %80)
  br label %91

82:                                               ; preds = %72, %67
  %83 = load %struct.bio*, %struct.bio** @IO_BLOCKED, align 8
  %84 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %85 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %84, i32 0, i32 5
  %86 = load %struct.bio**, %struct.bio*** %85, align 8
  %87 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %88 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.bio*, %struct.bio** %86, i64 %89
  store %struct.bio* %83, %struct.bio** %90, align 8
  br label %91

91:                                               ; preds = %82, %78
  br label %92

92:                                               ; preds = %91, %51
  %93 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %94 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %95 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %94, i32 0, i32 0
  %96 = load %struct.mddev*, %struct.mddev** %95, align 8
  %97 = call i32 @rdev_dec_pending(%struct.md_rdev* %93, %struct.mddev* %96)
  %98 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %99 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %100 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @allow_barrier(%struct.r1conf* %98, i32 %101)
  %103 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %104 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %103, i32 0, i32 3
  %105 = load %struct.bio*, %struct.bio** %104, align 8
  store %struct.bio* %105, %struct.bio** %6, align 8
  %106 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %107 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.mddev*, %struct.mddev** %5, align 8
  %109 = load %struct.bio*, %struct.bio** %6, align 8
  %110 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %111 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %114 = call i32 @raid1_read_request(%struct.mddev* %108, %struct.bio* %109, i32 %112, %struct.r1bio* %113)
  ret void
}

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @freeze_array(%struct.r1conf*, i32) #1

declare dso_local i32 @fix_read_error(%struct.r1conf*, i64, i32, i32) #1

declare dso_local i32 @unfreeze_array(%struct.r1conf*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @allow_barrier(%struct.r1conf*, i32) #1

declare dso_local i32 @raid1_read_request(%struct.mddev*, %struct.bio*, i32, %struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

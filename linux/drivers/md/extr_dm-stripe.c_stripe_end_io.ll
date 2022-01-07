; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }

@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@DM_IO_ERROR_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i64*)* @stripe_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_end_io(%struct.dm_target* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.stripe_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.stripe_c*, %struct.stripe_c** %12, align 8
  store %struct.stripe_c* %13, %struct.stripe_c** %10, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REQ_RAHEAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %96

28:                                               ; preds = %19
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BLK_STS_NOTSUPP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %28
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i32 0, i32 16)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %39 = load %struct.bio*, %struct.bio** %6, align 8
  %40 = call i32 @bio_dev(%struct.bio* %39)
  %41 = call i32 @MAJOR(i32 %40)
  %42 = load %struct.bio*, %struct.bio** %6, align 8
  %43 = call i32 @bio_dev(%struct.bio* %42)
  %44 = call i32 @MINOR(i32 %43)
  %45 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %91, %35
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %49 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %46
  %53 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %54 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %64 = call i32 @strcmp(i32 %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %52
  %67 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %68 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  %75 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %76 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i64 @atomic_read(i32* %81)
  %83 = load i64, i64* @DM_IO_ERROR_THRESHOLD, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %87 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %86, i32 0, i32 1
  %88 = call i32 @schedule_work(i32* %87)
  br label %89

89:                                               ; preds = %85, %66
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %46

94:                                               ; preds = %46
  %95 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %33, %26, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @bio_dev(%struct.bio*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

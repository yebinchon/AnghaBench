; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_clone_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_clone_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target_io = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.bio }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bio = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: the target %s doesn't support integrity data.\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target_io*, %struct.bio*, i32, i32)* @clone_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_bio(%struct.dm_target_io* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target_io*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  store %struct.dm_target_io* %0, %struct.dm_target_io** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %13 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %12, i32 0, i32 2
  store %struct.bio* %13, %struct.bio** %10, align 8
  %14 = load %struct.bio*, %struct.bio** %10, align 8
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = call i32 @__bio_clone_fast(%struct.bio* %14, %struct.bio* %15)
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = call i64 @bio_integrity(%struct.bio* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %4
  %21 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %22 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @dm_target_has_integrity(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %30 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @dm_target_passes_integrity(%struct.TYPE_9__* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %28, %20
  %38 = phi i1 [ false, %20 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %44 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dm_device_name(i32 %47)
  %49 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %50 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DMWARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %37
  %60 = load %struct.bio*, %struct.bio** %10, align 8
  %61 = load %struct.bio*, %struct.bio** %7, align 8
  %62 = load i32, i32* @GFP_NOIO, align 4
  %63 = call i32 @bio_integrity_clone(%struct.bio* %60, %struct.bio* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %91

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %4
  %70 = load %struct.bio*, %struct.bio** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.bio*, %struct.bio** %10, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %71, %75
  %77 = call i32 @to_bytes(i32 %76)
  %78 = call i32 @bio_advance(%struct.bio* %70, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @to_bytes(i32 %79)
  %81 = load %struct.bio*, %struct.bio** %10, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.bio*, %struct.bio** %7, align 8
  %85 = call i64 @bio_integrity(%struct.bio* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load %struct.bio*, %struct.bio** %10, align 8
  %89 = call i32 @bio_integrity_trim(%struct.bio* %88)
  br label %90

90:                                               ; preds = %87, %69
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %66, %42
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @__bio_clone_fast(%struct.bio*, %struct.bio*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_target_has_integrity(%struct.TYPE_9__*) #1

declare dso_local i32 @dm_target_passes_integrity(%struct.TYPE_9__*) #1

declare dso_local i32 @DMWARN(i8*, i32, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i32 @to_bytes(i32) #1

declare dso_local i32 @bio_integrity_trim(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

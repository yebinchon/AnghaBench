; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___evdev_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i32, i32, i32, %struct.input_event* }
%struct.input_event = type { i32, i64 }

@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, i32)* @__evdev_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__evdev_flush_queue(%struct.evdev_client* %0, i32 %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.input_event*, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %12 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EV_SYN, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %21 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %24 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %27 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  store i32 1, i32* %7, align 4
  %28 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %29 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %101, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %34 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %31
  %38 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %39 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %38, i32 0, i32 4
  %40 = load %struct.input_event*, %struct.input_event** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.input_event, %struct.input_event* %40, i64 %42
  store %struct.input_event* %43, %struct.input_event** %10, align 8
  %44 = load %struct.input_event*, %struct.input_event** %10, align 8
  %45 = getelementptr inbounds %struct.input_event, %struct.input_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EV_SYN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.input_event*, %struct.input_event** %10, align 8
  %51 = getelementptr inbounds %struct.input_event, %struct.input_event* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SYN_REPORT, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %37
  %56 = phi i1 [ false, %37 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.input_event*, %struct.input_event** %10, align 8
  %59 = getelementptr inbounds %struct.input_event, %struct.input_event* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %101

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %101

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %77 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %76, i32 0, i32 4
  %78 = load %struct.input_event*, %struct.input_event** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.input_event, %struct.input_event* %78, i64 %80
  %82 = load %struct.input_event*, %struct.input_event** %10, align 8
  %83 = bitcast %struct.input_event* %81 to i8*
  %84 = bitcast %struct.input_event* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  br label %85

85:                                               ; preds = %75, %71
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %99 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %87
  br label %101

101:                                              ; preds = %100, %70, %63
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %5, align 4
  br label %31

106:                                              ; preds = %31
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %109 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___pass_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c___pass_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32, i32, i32, i32, i32, %struct.input_event* }
%struct.input_event = type { i64, i64, i64, i32, i32 }

@EV_SYN = common dso_local global i64 0, align 8
@SYN_DROPPED = common dso_local global i64 0, align 8
@SYN_REPORT = common dso_local global i64 0, align 8
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, %struct.input_event*)* @__pass_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pass_event(%struct.evdev_client* %0, %struct.input_event* %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca %struct.input_event*, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store %struct.input_event* %1, %struct.input_event** %4, align 8
  %5 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %6 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %5, i32 0, i32 5
  %7 = load %struct.input_event*, %struct.input_event** %6, align 8
  %8 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %9 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %struct.input_event, %struct.input_event* %7, i64 %12
  %14 = load %struct.input_event*, %struct.input_event** %4, align 8
  %15 = bitcast %struct.input_event* %13 to i8*
  %16 = bitcast %struct.input_event* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %18 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %22 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %26 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %29 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %2
  %36 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %37 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 2
  %40 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %41 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %39, %43
  %45 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %46 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.input_event*, %struct.input_event** %4, align 8
  %48 = getelementptr inbounds %struct.input_event, %struct.input_event* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %51 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %50, i32 0, i32 5
  %52 = load %struct.input_event*, %struct.input_event** %51, align 8
  %53 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %54 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.input_event, %struct.input_event* %52, i64 %56
  %58 = getelementptr inbounds %struct.input_event, %struct.input_event* %57, i32 0, i32 4
  store i32 %49, i32* %58, align 4
  %59 = load %struct.input_event*, %struct.input_event** %4, align 8
  %60 = getelementptr inbounds %struct.input_event, %struct.input_event* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %63 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %62, i32 0, i32 5
  %64 = load %struct.input_event*, %struct.input_event** %63, align 8
  %65 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %66 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.input_event, %struct.input_event* %64, i64 %68
  %70 = getelementptr inbounds %struct.input_event, %struct.input_event* %69, i32 0, i32 3
  store i32 %61, i32* %70, align 8
  %71 = load i64, i64* @EV_SYN, align 8
  %72 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %73 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %72, i32 0, i32 5
  %74 = load %struct.input_event*, %struct.input_event** %73, align 8
  %75 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %76 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.input_event, %struct.input_event* %74, i64 %78
  %80 = getelementptr inbounds %struct.input_event, %struct.input_event* %79, i32 0, i32 0
  store i64 %71, i64* %80, align 8
  %81 = load i64, i64* @SYN_DROPPED, align 8
  %82 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %83 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %82, i32 0, i32 5
  %84 = load %struct.input_event*, %struct.input_event** %83, align 8
  %85 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %86 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.input_event, %struct.input_event* %84, i64 %88
  %90 = getelementptr inbounds %struct.input_event, %struct.input_event* %89, i32 0, i32 1
  store i64 %81, i64* %90, align 8
  %91 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %92 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %91, i32 0, i32 5
  %93 = load %struct.input_event*, %struct.input_event** %92, align 8
  %94 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %95 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.input_event, %struct.input_event* %93, i64 %97
  %99 = getelementptr inbounds %struct.input_event, %struct.input_event* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %101 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %104 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %35, %2
  %106 = load %struct.input_event*, %struct.input_event** %4, align 8
  %107 = getelementptr inbounds %struct.input_event, %struct.input_event* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EV_SYN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load %struct.input_event*, %struct.input_event** %4, align 8
  %113 = getelementptr inbounds %struct.input_event, %struct.input_event* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SYN_REPORT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %119 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %122 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %124 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %123, i32 0, i32 4
  %125 = load i32, i32* @SIGIO, align 4
  %126 = load i32, i32* @POLL_IN, align 4
  %127 = call i32 @kill_fasync(i32* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %117, %111, %105
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @kill_fasync(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

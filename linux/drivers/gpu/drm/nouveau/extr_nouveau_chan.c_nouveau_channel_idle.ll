; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_fence = type { i32 }
%struct.TYPE_4__ = type { i32 }

@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to idle channel %d [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_channel_idle(%struct.nouveau_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_cli*, align 8
  %5 = alloca %struct.nouveau_fence*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %8 = icmp ne %struct.nouveau_channel* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %15, i32 0, i32 2
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9, %1
  %21 = phi i1 [ false, %9 ], [ false, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %27 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %31, %struct.nouveau_cli** %4, align 8
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %5, align 8
  %32 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %33 = call i32 @nouveau_fence_new(%struct.nouveau_channel* %32, i32 0, %struct.nouveau_fence** %5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load %struct.nouveau_fence*, %struct.nouveau_fence** %5, align 8
  %38 = call i32 @nouveau_fence_wait(%struct.nouveau_fence* %37, i32 0, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = call i32 @nouveau_fence_unref(%struct.nouveau_fence** %5)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* @err, align 4
  %45 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %47 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %49, i32 0, i32 0
  %51 = call %struct.TYPE_4__* @nvxx_client(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NV_PRINTK(i32 %44, %struct.nouveau_cli* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %20
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nouveau_fence_new(%struct.nouveau_channel*, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @nouveau_fence_wait(%struct.nouveau_fence*, i32, i32) #1

declare dso_local i32 @nouveau_fence_unref(%struct.nouveau_fence**) #1

declare dso_local i32 @NV_PRINTK(i32, %struct.nouveau_cli*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @nvxx_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

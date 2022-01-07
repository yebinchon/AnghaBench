; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_channel_configure_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-prg.c_ipu_prg_channel_configure_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ipu_prg* }
%struct.ipu_prg = type { i32*, %struct.ipu_prg_channel* }
%struct.ipu_prg_channel = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_prg_channel_configure_pending(%struct.ipuv3_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipuv3_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_prg*, align 8
  %6 = alloca %struct.ipu_prg_channel*, align 8
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %3, align 8
  %7 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ipu_prg_ipu_to_prg_chan(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ipu_prg*, %struct.ipu_prg** %14, align 8
  store %struct.ipu_prg* %15, %struct.ipu_prg** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.ipu_prg*, %struct.ipu_prg** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %20, i32 0, i32 1
  %22 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %22, i64 %24
  store %struct.ipu_prg_channel* %25, %struct.ipu_prg_channel** %6, align 8
  %26 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %6, align 8
  %27 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.ipu_prg*, %struct.ipu_prg** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_prg, %struct.ipu_prg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ipu_prg_channel*, %struct.ipu_prg_channel** %6, align 8
  %37 = getelementptr inbounds %struct.ipu_prg_channel, %struct.ipu_prg_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ipu_pre_update_pending(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ipu_prg_ipu_to_prg_chan(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ipu_pre_update_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.d71_dev* }
%struct.d71_dev = type { i32 }

@GCU_CONFIG_VALID0 = common dso_local global i32 0, align 4
@GCU_CONFIG_VALID1 = common dso_local global i32 0, align 4
@GCU_CONFIG_CVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_dev*, i32, i32)* @d71_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_flush(%struct.komeda_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.d71_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.komeda_dev* %0, %struct.komeda_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %10 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %9, i32 0, i32 0
  %11 = load %struct.d71_dev*, %struct.d71_dev** %10, align 8
  store %struct.d71_dev* %11, %struct.d71_dev** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @GCU_CONFIG_VALID0, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @GCU_CONFIG_VALID1, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load %struct.d71_dev*, %struct.d71_dev** %7, align 8
  %21 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GCU_CONFIG_CVAL, align 4
  %25 = call i32 @malidp_write32(i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @malidp_write32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

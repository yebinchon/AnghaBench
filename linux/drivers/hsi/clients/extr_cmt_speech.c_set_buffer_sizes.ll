; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_set_buffer_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_set_buffer_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CS_FEAT_ROLLING_RX_COUNTER = common dso_local global i32 0, align 4
@RX_PTR_BOUNDARY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*, i32, i32)* @set_buffer_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_buffer_sizes(%struct.cs_hsi_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cs_hsi_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %12 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %15 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %20 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CS_FEAT_ROLLING_RX_COUNTER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RX_PTR_BOUNDARY_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %34 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %36 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %39 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  br label %48

42:                                               ; preds = %3
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %47 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

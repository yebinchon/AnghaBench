; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.vga_switcheroo_client = type { i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@vgasr_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchon(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %3, align 8
  %4 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %5 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = icmp ne i32 (i32, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %19 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %22 = call i32 %17(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %25 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %30 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %33 = call i32 %28(i32 %31, i32 %32)
  %34 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %35 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %36 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %23, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

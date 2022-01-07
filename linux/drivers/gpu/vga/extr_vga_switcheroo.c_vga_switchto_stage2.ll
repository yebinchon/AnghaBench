; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switchto_stage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.vga_switcheroo_client = type { i32, i32, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32)* }

@vgasr_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VGA_SWITCHEROO_OFF = common dso_local global i64 0, align 8
@VGA_SWITCHEROO_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_switcheroo_client*)* @vga_switchto_stage2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switchto_stage2(%struct.vga_switcheroo_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vga_switcheroo_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.vga_switcheroo_client* %0, %struct.vga_switcheroo_client** %3, align 8
  %6 = call %struct.vga_switcheroo_client* @find_active_client(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 2))
  store %struct.vga_switcheroo_client* %6, %struct.vga_switcheroo_client** %5, align 8
  %7 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %8 = icmp ne %struct.vga_switcheroo_client* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %12 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %14 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %19 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @VGA_SWITCHEROO_OFF, align 8
  %22 = call i32 @set_audio_state(i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %25 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %30 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @fbcon_remap_all(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0))
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %39 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %37(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vgasr_priv, i32 0, i32 0))
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %33
  %48 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %49 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = icmp ne i32 (i32)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %56 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %61 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %59(i32 %62)
  br label %64

64:                                               ; preds = %54, %47
  %65 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %66 = call i64 @vga_switcheroo_pwr_state(%struct.vga_switcheroo_client* %65)
  %67 = load i64, i64* @VGA_SWITCHEROO_ON, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %71 = call i32 @vga_switchoff(%struct.vga_switcheroo_client* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %74 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %79 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @VGA_SWITCHEROO_ON, align 8
  %82 = call i32 @set_audio_state(i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %85 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %45, %9
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.vga_switcheroo_client* @find_active_client(i32*) #1

declare dso_local i32 @set_audio_state(i32, i64) #1

declare dso_local i32 @fbcon_remap_all(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @vga_switcheroo_pwr_state(%struct.vga_switcheroo_client*) #1

declare dso_local i32 @vga_switchoff(%struct.vga_switcheroo_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

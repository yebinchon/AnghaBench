; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_restore_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_restore_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i64, i64, i32, i64, i64, %struct.vmw_vga_topology_state*, i64 }
%struct.vmw_vga_topology_state = type { i64, i64, i64, i64, i64 }

@SVGA_REG_WIDTH = common dso_local global i32 0, align 4
@SVGA_REG_HEIGHT = common dso_local global i32 0, align 4
@SVGA_REG_BITS_PER_PIXEL = common dso_local global i32 0, align 4
@SVGA_CAP_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_REG_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_FIFO_PITCHLOCK = common dso_local global i64 0, align 8
@SVGA_CAP_DISPLAY_TOPOLOGY = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_ID = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_IS_PRIMARY = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_POSITION_X = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_POSITION_Y = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_WIDTH = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_HEIGHT = common dso_local global i32 0, align 4
@SVGA_ID_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_restore_vga(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_vga_topology_state*, align 8
  %5 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = load i32, i32* @SVGA_REG_WIDTH, align 4
  %8 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @vmw_write(%struct.vmw_private* %6, i32 %7, i64 %10)
  %12 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %13 = load i32, i32* @SVGA_REG_HEIGHT, align 4
  %14 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @vmw_write(%struct.vmw_private* %12, i32 %13, i64 %16)
  %18 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %19 = load i32, i32* @SVGA_REG_BITS_PER_PIXEL, align 4
  %20 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @vmw_write(%struct.vmw_private* %18, i32 %19, i64 %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SVGA_CAP_PITCHLOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %32 = load i32, i32* @SVGA_REG_PITCHLOCK, align 4
  %33 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @vmw_write(%struct.vmw_private* %31, i32 %32, i64 %35)
  br label %52

37:                                               ; preds = %1
  %38 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %39 = call i64 @vmw_fifo_have_pitchlock(%struct.vmw_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %43 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %46 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVGA_FIFO_PITCHLOCK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @vmw_mmio_write(i64 %44, i64 %49)
  br label %51

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SVGA_CAP_DISPLAY_TOPOLOGY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %115

60:                                               ; preds = %52
  store i64 0, i64* %5, align 8
  br label %61

61:                                               ; preds = %111, %60
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %64 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %61
  %68 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %69 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %68, i32 0, i32 6
  %70 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %70, i64 %71
  store %struct.vmw_vga_topology_state* %72, %struct.vmw_vga_topology_state** %4, align 8
  %73 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %74 = load i32, i32* @SVGA_REG_DISPLAY_ID, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @vmw_write(%struct.vmw_private* %73, i32 %74, i64 %75)
  %77 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %78 = load i32, i32* @SVGA_REG_DISPLAY_IS_PRIMARY, align 4
  %79 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %80 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @vmw_write(%struct.vmw_private* %77, i32 %78, i64 %81)
  %83 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %84 = load i32, i32* @SVGA_REG_DISPLAY_POSITION_X, align 4
  %85 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %86 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @vmw_write(%struct.vmw_private* %83, i32 %84, i64 %87)
  %89 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %90 = load i32, i32* @SVGA_REG_DISPLAY_POSITION_Y, align 4
  %91 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %92 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @vmw_write(%struct.vmw_private* %89, i32 %90, i64 %93)
  %95 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %96 = load i32, i32* @SVGA_REG_DISPLAY_WIDTH, align 4
  %97 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %98 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @vmw_write(%struct.vmw_private* %95, i32 %96, i64 %99)
  %101 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %102 = load i32, i32* @SVGA_REG_DISPLAY_HEIGHT, align 4
  %103 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %104 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @vmw_write(%struct.vmw_private* %101, i32 %102, i64 %105)
  %107 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %108 = load i32, i32* @SVGA_REG_DISPLAY_ID, align 4
  %109 = load i64, i64* @SVGA_ID_INVALID, align 8
  %110 = call i32 @vmw_write(%struct.vmw_private* %107, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %67
  %112 = load i64, i64* %5, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %5, align 8
  br label %61

114:                                              ; preds = %61
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %59
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i64) #1

declare dso_local i64 @vmw_fifo_have_pitchlock(%struct.vmw_private*) #1

declare dso_local i32 @vmw_mmio_write(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

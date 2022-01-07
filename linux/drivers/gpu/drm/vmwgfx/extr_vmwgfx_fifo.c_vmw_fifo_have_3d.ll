; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_have_3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_have_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i64, i32, i32, %struct.vmw_fifo_state, i32* }
%struct.vmw_fifo_state = type { i32 }

@SVGA_CAP_3D = common dso_local global i32 0, align 4
@SVGA_CAP_GBOBJECTS = common dso_local global i32 0, align 4
@SVGA_REG_DEV_CAP = common dso_local global i32 0, align 4
@SVGA3D_DEVCAP_3D = common dso_local global i32 0, align 4
@SVGA_CAP_EXTENDED_FIFO = common dso_local global i32 0, align 4
@SVGA_FIFO_MIN = common dso_local global i32 0, align 4
@SVGA_FIFO_3D_HWVERSION = common dso_local global i32 0, align 4
@SVGA_FIFO_CAP_3D_HWVERSION_REVISED = common dso_local global i32 0, align 4
@SVGA_FIFO_3D_HWVERSION_REVISED = common dso_local global i32 0, align 4
@SVGA3D_HWVERSION_WS8_B1 = common dso_local global i64 0, align 8
@vmw_du_legacy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fifo_have_3d(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmw_fifo_state*, align 8
  %8 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %9 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 4
  store %struct.vmw_fifo_state* %13, %struct.vmw_fifo_state** %7, align 8
  %14 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SVGA_CAP_3D, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %23 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %21
  %29 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %104

34:                                               ; preds = %28
  %35 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %36 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %35, i32 0, i32 2
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %39 = load i32, i32* @SVGA_REG_DEV_CAP, align 4
  %40 = load i32, i32* @SVGA3D_DEVCAP_3D, align 4
  %41 = call i32 @vmw_write(%struct.vmw_private* %38, i32 %39, i32 %40)
  %42 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %43 = load i32, i32* @SVGA_REG_DEV_CAP, align 4
  %44 = call i64 @vmw_read(%struct.vmw_private* %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %46 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %104

51:                                               ; preds = %21
  %52 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %53 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SVGA_CAP_EXTENDED_FIFO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %104

59:                                               ; preds = %51
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @SVGA_FIFO_MIN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i64 @vmw_mmio_read(i32* %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @SVGA_FIFO_3D_HWVERSION, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = icmp ule i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %104

71:                                               ; preds = %59
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %74 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SVGA_FIFO_CAP_3D_HWVERSION_REVISED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @SVGA_FIFO_3D_HWVERSION_REVISED, align 4
  br label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @SVGA_FIFO_3D_HWVERSION, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %72, i64 %85
  %87 = call i64 @vmw_mmio_read(i32* %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %104

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @SVGA3D_HWVERSION_WS8_B1, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %104

96:                                               ; preds = %91
  %97 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %98 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @vmw_du_legacy, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %104

103:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %102, %95, %90, %70, %58, %34, %33, %20
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i64 @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @vmw_mmio_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_save_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_save_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i64, i32, i32, %struct.vmw_vga_topology_state*, i64, i8*, i8* }
%struct.vmw_vga_topology_state = type { i64, i64, i64, i64, i8* }

@SVGA_REG_WIDTH = common dso_local global i32 0, align 4
@SVGA_REG_HEIGHT = common dso_local global i32 0, align 4
@SVGA_REG_BITS_PER_PIXEL = common dso_local global i32 0, align 4
@SVGA_CAP_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_REG_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_FIFO_PITCHLOCK = common dso_local global i64 0, align 8
@SVGA_CAP_DISPLAY_TOPOLOGY = common dso_local global i32 0, align 4
@SVGA_REG_NUM_GUEST_DISPLAYS = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_ID = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_IS_PRIMARY = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_POSITION_X = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_POSITION_Y = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_WIDTH = common dso_local global i32 0, align 4
@SVGA_REG_DISPLAY_HEIGHT = common dso_local global i32 0, align 4
@SVGA_ID_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_save_vga(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_vga_topology_state*, align 8
  %5 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = load i32, i32* @SVGA_REG_WIDTH, align 4
  %8 = call i8* @vmw_read(%struct.vmw_private* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %13 = load i32, i32* @SVGA_REG_HEIGHT, align 4
  %14 = call i8* @vmw_read(%struct.vmw_private* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %19 = load i32, i32* @SVGA_REG_BITS_PER_PIXEL, align 4
  %20 = call i8* @vmw_read(%struct.vmw_private* %18, i32 %19)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SVGA_CAP_PITCHLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %31 = load i32, i32* @SVGA_REG_PITCHLOCK, align 4
  %32 = call i8* @vmw_read(%struct.vmw_private* %30, i32 %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %37 = call i64 @vmw_fifo_have_pitchlock(%struct.vmw_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SVGA_FIFO_PITCHLOCK, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i8* @vmw_mmio_read(i64 %44)
  %46 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %47 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %39, %35
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SVGA_CAP_DISPLAY_TOPOLOGY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %163

57:                                               ; preds = %49
  %58 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %59 = load i32, i32* @SVGA_REG_NUM_GUEST_DISPLAYS, align 4
  %60 = call i8* @vmw_read(%struct.vmw_private* %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %63 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %65 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %70 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  store i64 0, i64* %5, align 8
  br label %72

72:                                               ; preds = %159, %71
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %75 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %162

79:                                               ; preds = %72
  %80 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %81 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %80, i32 0, i32 4
  %82 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %82, i64 %83
  store %struct.vmw_vga_topology_state* %84, %struct.vmw_vga_topology_state** %4, align 8
  %85 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %86 = load i32, i32* @SVGA_REG_DISPLAY_ID, align 4
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @vmw_write(%struct.vmw_private* %85, i32 %86, i64 %87)
  %89 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %90 = load i32, i32* @SVGA_REG_DISPLAY_IS_PRIMARY, align 4
  %91 = call i8* @vmw_read(%struct.vmw_private* %89, i32 %90)
  %92 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %93 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %95 = load i32, i32* @SVGA_REG_DISPLAY_POSITION_X, align 4
  %96 = call i8* @vmw_read(%struct.vmw_private* %94, i32 %95)
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %99 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %101 = load i32, i32* @SVGA_REG_DISPLAY_POSITION_Y, align 4
  %102 = call i8* @vmw_read(%struct.vmw_private* %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %105 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %107 = load i32, i32* @SVGA_REG_DISPLAY_WIDTH, align 4
  %108 = call i8* @vmw_read(%struct.vmw_private* %106, i32 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %111 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %113 = load i32, i32* @SVGA_REG_DISPLAY_HEIGHT, align 4
  %114 = call i8* @vmw_read(%struct.vmw_private* %112, i32 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %117 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %119 = load i32, i32* @SVGA_REG_DISPLAY_ID, align 4
  %120 = load i64, i64* @SVGA_ID_INVALID, align 8
  %121 = call i32 @vmw_write(%struct.vmw_private* %118, i32 %119, i64 %120)
  %122 = load i64, i64* %5, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %79
  %125 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %126 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %131 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %129
  %135 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %136 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %134
  %140 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %141 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %144 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %148 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %150 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %153 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = load %struct.vmw_vga_topology_state*, %struct.vmw_vga_topology_state** %4, align 8
  %157 = getelementptr inbounds %struct.vmw_vga_topology_state, %struct.vmw_vga_topology_state* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %139, %134, %129, %124, %79
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %5, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %5, align 8
  br label %72

162:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %56
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i8* @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i64 @vmw_fifo_have_pitchlock(%struct.vmw_private*) #1

declare dso_local i8* @vmw_mmio_read(i64) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.evergreen_mc_save = type { i32 }

@HDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@CHIP_PALM = common dso_local global i64 0, align 8
@CHIP_SUMO = common dso_local global i64 0, align 8
@CHIP_SUMO2 = common dso_local global i64 0, align 8
@MC_FUS_VM_FB_OFFSET = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@HDP_NONSURFACE_BASE = common dso_local global i32 0, align 4
@HDP_NONSURFACE_INFO = common dso_local global i32 0, align 4
@HDP_NONSURFACE_SIZE = common dso_local global i32 0, align 4
@MC_VM_AGP_TOP = common dso_local global i32 0, align 4
@MC_VM_AGP_BOT = common dso_local global i32 0, align 4
@MC_VM_AGP_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 11284, %11
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 11288, %14
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 11292, %17
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 11296, %20
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 11300, %23
  %25 = call i32 @WREG32(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 24
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @HDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @evergreen_mc_stop(%struct.radeon_device* %34, %struct.evergreen_mc_save* %3)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %46 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RADEON_IS_AGP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %44
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 12
  %71 = call i32 @WREG32(i32 %65, i32 %70)
  %72 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 12
  %78 = call i32 @WREG32(i32 %72, i32 %77)
  br label %94

79:                                               ; preds = %54
  %80 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 12
  %86 = call i32 @WREG32(i32 %80, i32 %85)
  %87 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 12
  %93 = call i32 @WREG32(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %79, %64
  br label %110

95:                                               ; preds = %44
  %96 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 12
  %102 = call i32 @WREG32(i32 %96, i32 %101)
  %103 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 12
  %109 = call i32 @WREG32(i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %95, %94
  %111 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 12
  %117 = call i32 @WREG32(i32 %111, i32 %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CHIP_PALM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %110
  %124 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CHIP_SUMO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CHIP_SUMO2, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %129, %123, %110
  %136 = load i32, i32* @MC_FUS_VM_FB_OFFSET, align 4
  %137 = call i32 @RREG32(i32 %136)
  %138 = and i32 %137, 1048575
  store i32 %138, i32* %4, align 4
  %139 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 20
  %144 = and i32 %143, 15
  %145 = shl i32 %144, 24
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 20
  %153 = and i32 %152, 15
  %154 = shl i32 %153, 20
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* @MC_FUS_VM_FB_OFFSET, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @WREG32(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %135, %129
  %161 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 24
  %166 = and i32 %165, 65535
  %167 = shl i32 %166, 16
  store i32 %167, i32* %4, align 4
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 24
  %173 = and i32 %172, 65535
  %174 = load i32, i32* %4, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @WREG32(i32 %176, i32 %177)
  %179 = load i32, i32* @HDP_NONSURFACE_BASE, align 4
  %180 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 8
  %185 = call i32 @WREG32(i32 %179, i32 %184)
  %186 = load i32, i32* @HDP_NONSURFACE_INFO, align 4
  %187 = call i32 @WREG32(i32 %186, i32 1073742080)
  %188 = load i32, i32* @HDP_NONSURFACE_SIZE, align 4
  %189 = call i32 @WREG32(i32 %188, i32 1073741823)
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @RADEON_IS_AGP, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %160
  %197 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %198 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 16
  %203 = call i32 @WREG32(i32 %197, i32 %202)
  %204 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %205 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = ashr i32 %208, 16
  %210 = call i32 @WREG32(i32 %204, i32 %209)
  %211 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %212 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 22
  %217 = call i32 @WREG32(i32 %211, i32 %216)
  br label %225

218:                                              ; preds = %160
  %219 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %220 = call i32 @WREG32(i32 %219, i32 0)
  %221 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %222 = call i32 @WREG32(i32 %221, i32 268435455)
  %223 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %224 = call i32 @WREG32(i32 %223, i32 268435455)
  br label %225

225:                                              ; preds = %218, %196
  %226 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %227 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @dev_warn(i32 %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %234

234:                                              ; preds = %229, %225
  %235 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %236 = call i32 @evergreen_mc_resume(%struct.radeon_device* %235, %struct.evergreen_mc_save* %3)
  %237 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %238 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %237)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

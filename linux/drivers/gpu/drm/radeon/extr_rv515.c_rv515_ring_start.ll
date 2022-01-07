; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_ring_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_ring_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@ISYNC_CNTL = common dso_local global i32 0, align 4
@ISYNC_ANY2D_IDLE3D = common dso_local global i32 0, align 4
@ISYNC_ANY3D_IDLE2D = common dso_local global i32 0, align 4
@ISYNC_WAIT_IDLEGUI = common dso_local global i32 0, align 4
@ISYNC_CPSCRATCH_IDLEGUI = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@R300_PIPE_AUTO_CONFIG = common dso_local global i32 0, align 4
@GB_SELECT = common dso_local global i32 0, align 4
@GB_ENABLE = common dso_local global i32 0, align 4
@R500_SU_REG_DEST = common dso_local global i32 0, align 4
@VAP_INDEX_OFFSET = common dso_local global i32 0, align 4
@RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@RB3D_DC_FREE = common dso_local global i32 0, align 4
@ZB_ZCACHE_CTLSTAT = common dso_local global i32 0, align 4
@ZC_FLUSH = common dso_local global i32 0, align 4
@ZC_FREE = common dso_local global i32 0, align 4
@GB_AA_CONFIG = common dso_local global i32 0, align 4
@GB_MSPOS0 = common dso_local global i32 0, align 4
@MS_X0_SHIFT = common dso_local global i32 0, align 4
@MS_Y0_SHIFT = common dso_local global i32 0, align 4
@MS_X1_SHIFT = common dso_local global i32 0, align 4
@MS_Y1_SHIFT = common dso_local global i32 0, align 4
@MS_X2_SHIFT = common dso_local global i32 0, align 4
@MS_Y2_SHIFT = common dso_local global i32 0, align 4
@MSBD0_Y_SHIFT = common dso_local global i32 0, align 4
@MSBD0_X_SHIFT = common dso_local global i32 0, align 4
@GB_MSPOS1 = common dso_local global i32 0, align 4
@MS_X3_SHIFT = common dso_local global i32 0, align 4
@MS_Y3_SHIFT = common dso_local global i32 0, align 4
@MS_X4_SHIFT = common dso_local global i32 0, align 4
@MS_Y4_SHIFT = common dso_local global i32 0, align 4
@MS_X5_SHIFT = common dso_local global i32 0, align 4
@MS_Y5_SHIFT = common dso_local global i32 0, align 4
@MSBD1_SHIFT = common dso_local global i32 0, align 4
@GA_ENHANCE = common dso_local global i32 0, align 4
@GA_DEADLOCK_CNTL = common dso_local global i32 0, align 4
@GA_FASTSYNC_CNTL = common dso_local global i32 0, align 4
@GA_POLY_MODE = common dso_local global i32 0, align 4
@FRONT_PTYPE_TRIANGE = common dso_local global i32 0, align 4
@BACK_PTYPE_TRIANGE = common dso_local global i32 0, align 4
@GA_ROUND_MODE = common dso_local global i32 0, align 4
@GEOMETRY_ROUND_NEAREST = common dso_local global i32 0, align 4
@COLOR_ROUND_NEAREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_ring_start(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %8 = call i32 @radeon_ring_lock(%struct.radeon_device* %6, %struct.radeon_ring* %7, i32 64)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %212

12:                                               ; preds = %2
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = load i32, i32* @ISYNC_CNTL, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %18 = load i32, i32* @ISYNC_ANY2D_IDLE3D, align 4
  %19 = load i32, i32* @ISYNC_ANY3D_IDLE2D, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ISYNC_WAIT_IDLEGUI, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ISYNC_CPSCRATCH_IDLEGUI, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %27 = load i32, i32* @WAIT_UNTIL, align 4
  %28 = call i32 @PACKET0(i32 %27, i32 0)
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %28)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %31 = load i32, i32* @WAIT_2D_IDLECLEAN, align 4
  %32 = load i32, i32* @WAIT_3D_IDLECLEAN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %33)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %36 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %37 = call i32 @PACKET0(i32 %36, i32 0)
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %40 = load i32, i32* @R300_PIPE_AUTO_CONFIG, align 4
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %43 = load i32, i32* @GB_SELECT, align 4
  %44 = call i32 @PACKET0(i32 %43, i32 0)
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 0)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %49 = load i32, i32* @GB_ENABLE, align 4
  %50 = call i32 @PACKET0(i32 %49, i32 0)
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 0)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = load i32, i32* @R500_SU_REG_DEST, align 4
  %56 = call i32 @PACKET0(i32 %55, i32 0)
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %56)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %66 = load i32, i32* @VAP_INDEX_OFFSET, align 4
  %67 = call i32 @PACKET0(i32 %66, i32 0)
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 %67)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 0)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %72 = load i32, i32* @RB3D_DSTCACHE_CTLSTAT, align 4
  %73 = call i32 @PACKET0(i32 %72, i32 0)
  %74 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 %73)
  %75 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %76 = load i32, i32* @RB3D_DC_FLUSH, align 4
  %77 = load i32, i32* @RB3D_DC_FREE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %75, i32 %78)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %81 = load i32, i32* @ZB_ZCACHE_CTLSTAT, align 4
  %82 = call i32 @PACKET0(i32 %81, i32 0)
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %85 = load i32, i32* @ZC_FLUSH, align 4
  %86 = load i32, i32* @ZC_FREE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %87)
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %90 = load i32, i32* @WAIT_UNTIL, align 4
  %91 = call i32 @PACKET0(i32 %90, i32 0)
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 %91)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %94 = load i32, i32* @WAIT_2D_IDLECLEAN, align 4
  %95 = load i32, i32* @WAIT_3D_IDLECLEAN, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %99 = load i32, i32* @GB_AA_CONFIG, align 4
  %100 = call i32 @PACKET0(i32 %99, i32 0)
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 %100)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 0)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = load i32, i32* @RB3D_DSTCACHE_CTLSTAT, align 4
  %106 = call i32 @PACKET0(i32 %105, i32 0)
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 %106)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %109 = load i32, i32* @RB3D_DC_FLUSH, align 4
  %110 = load i32, i32* @RB3D_DC_FREE, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %114 = load i32, i32* @ZB_ZCACHE_CTLSTAT, align 4
  %115 = call i32 @PACKET0(i32 %114, i32 0)
  %116 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %115)
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %118 = load i32, i32* @ZC_FLUSH, align 4
  %119 = load i32, i32* @ZC_FREE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %117, i32 %120)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %123 = load i32, i32* @GB_MSPOS0, align 4
  %124 = call i32 @PACKET0(i32 %123, i32 0)
  %125 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 %124)
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %127 = load i32, i32* @MS_X0_SHIFT, align 4
  %128 = shl i32 6, %127
  %129 = load i32, i32* @MS_Y0_SHIFT, align 4
  %130 = shl i32 6, %129
  %131 = or i32 %128, %130
  %132 = load i32, i32* @MS_X1_SHIFT, align 4
  %133 = shl i32 6, %132
  %134 = or i32 %131, %133
  %135 = load i32, i32* @MS_Y1_SHIFT, align 4
  %136 = shl i32 6, %135
  %137 = or i32 %134, %136
  %138 = load i32, i32* @MS_X2_SHIFT, align 4
  %139 = shl i32 6, %138
  %140 = or i32 %137, %139
  %141 = load i32, i32* @MS_Y2_SHIFT, align 4
  %142 = shl i32 6, %141
  %143 = or i32 %140, %142
  %144 = load i32, i32* @MSBD0_Y_SHIFT, align 4
  %145 = shl i32 6, %144
  %146 = or i32 %143, %145
  %147 = load i32, i32* @MSBD0_X_SHIFT, align 4
  %148 = shl i32 6, %147
  %149 = or i32 %146, %148
  %150 = call i32 @radeon_ring_write(%struct.radeon_ring* %126, i32 %149)
  %151 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %152 = load i32, i32* @GB_MSPOS1, align 4
  %153 = call i32 @PACKET0(i32 %152, i32 0)
  %154 = call i32 @radeon_ring_write(%struct.radeon_ring* %151, i32 %153)
  %155 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %156 = load i32, i32* @MS_X3_SHIFT, align 4
  %157 = shl i32 6, %156
  %158 = load i32, i32* @MS_Y3_SHIFT, align 4
  %159 = shl i32 6, %158
  %160 = or i32 %157, %159
  %161 = load i32, i32* @MS_X4_SHIFT, align 4
  %162 = shl i32 6, %161
  %163 = or i32 %160, %162
  %164 = load i32, i32* @MS_Y4_SHIFT, align 4
  %165 = shl i32 6, %164
  %166 = or i32 %163, %165
  %167 = load i32, i32* @MS_X5_SHIFT, align 4
  %168 = shl i32 6, %167
  %169 = or i32 %166, %168
  %170 = load i32, i32* @MS_Y5_SHIFT, align 4
  %171 = shl i32 6, %170
  %172 = or i32 %169, %171
  %173 = load i32, i32* @MSBD1_SHIFT, align 4
  %174 = shl i32 6, %173
  %175 = or i32 %172, %174
  %176 = call i32 @radeon_ring_write(%struct.radeon_ring* %155, i32 %175)
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %178 = load i32, i32* @GA_ENHANCE, align 4
  %179 = call i32 @PACKET0(i32 %178, i32 0)
  %180 = call i32 @radeon_ring_write(%struct.radeon_ring* %177, i32 %179)
  %181 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %182 = load i32, i32* @GA_DEADLOCK_CNTL, align 4
  %183 = load i32, i32* @GA_FASTSYNC_CNTL, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @radeon_ring_write(%struct.radeon_ring* %181, i32 %184)
  %186 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %187 = load i32, i32* @GA_POLY_MODE, align 4
  %188 = call i32 @PACKET0(i32 %187, i32 0)
  %189 = call i32 @radeon_ring_write(%struct.radeon_ring* %186, i32 %188)
  %190 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %191 = load i32, i32* @FRONT_PTYPE_TRIANGE, align 4
  %192 = load i32, i32* @BACK_PTYPE_TRIANGE, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @radeon_ring_write(%struct.radeon_ring* %190, i32 %193)
  %195 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %196 = load i32, i32* @GA_ROUND_MODE, align 4
  %197 = call i32 @PACKET0(i32 %196, i32 0)
  %198 = call i32 @radeon_ring_write(%struct.radeon_ring* %195, i32 %197)
  %199 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %200 = load i32, i32* @GEOMETRY_ROUND_NEAREST, align 4
  %201 = load i32, i32* @COLOR_ROUND_NEAREST, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @radeon_ring_write(%struct.radeon_ring* %199, i32 %202)
  %204 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %205 = call i32 @PACKET0(i32 8392, i32 0)
  %206 = call i32 @radeon_ring_write(%struct.radeon_ring* %204, i32 %205)
  %207 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %208 = call i32 @radeon_ring_write(%struct.radeon_ring* %207, i32 0)
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %211 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %209, %struct.radeon_ring* %210, i32 0)
  br label %212

212:                                              ; preds = %12, %11
  ret void
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

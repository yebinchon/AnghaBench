; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_control_set_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_control_set_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_wave_control_info = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.HsaDbgWaveMsgAMDGen2 }
%struct.HsaDbgWaveMsgAMDGen2 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%union.SQ_CMD_BITS = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i32, i32 }
%union.GRBM_GFX_INDEX_BITS = type { i64, [16 x i8] }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@SQ_IND_CMD_MODE_SINGLE = common dso_local global i8* null, align 8
@SQ_IND_CMD_MODE_BROADCAST = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SQ_IND_CMD_CMD_HALT = common dso_local global i32 0, align 4
@SQ_IND_CMD_CMD_RESUME = common dso_local global i32 0, align 4
@SQ_IND_CMD_CMD_KILL = common dso_local global i32 0, align 4
@SQ_IND_CMD_CMD_DEBUG = common dso_local global i32 0, align 4
@MAX_TRAPID = common dso_local global i32 0, align 4
@SQ_IND_CMD_CMD_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbg_wave_control_info*, %union.SQ_CMD_BITS*, %union.GRBM_GFX_INDEX_BITS*)* @dbgdev_wave_control_set_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_wave_control_set_registers(%struct.dbg_wave_control_info* %0, %union.SQ_CMD_BITS* %1, %union.GRBM_GFX_INDEX_BITS* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dbg_wave_control_info*, align 8
  %6 = alloca %union.SQ_CMD_BITS*, align 8
  %7 = alloca %union.GRBM_GFX_INDEX_BITS*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.SQ_CMD_BITS, align 8
  %10 = alloca %union.GRBM_GFX_INDEX_BITS, align 8
  %11 = alloca %struct.HsaDbgWaveMsgAMDGen2*, align 8
  store %struct.dbg_wave_control_info* %0, %struct.dbg_wave_control_info** %5, align 8
  store %union.SQ_CMD_BITS* %1, %union.SQ_CMD_BITS** %6, align 8
  store %union.GRBM_GFX_INDEX_BITS* %2, %union.GRBM_GFX_INDEX_BITS** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = bitcast %union.SQ_CMD_BITS* %9 to i64*
  store i64 0, i64* %12, align 8
  %13 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to i64*
  store i64 0, i64* %13, align 8
  %14 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %15 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.HsaDbgWaveMsgAMDGen2* %17, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %18 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %19 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %91 [
    i32 133, label %21
    i32 135, label %57
    i32 134, label %67
  ]

21:                                               ; preds = %3
  %22 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %25 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %31 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @SQ_IND_CMD_MODE_SINGLE, align 8
  %37 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %40 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %46 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %52 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %94

57:                                               ; preds = %3
  %58 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** @SQ_IND_CMD_MODE_BROADCAST, align 8
  %65 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %94

67:                                               ; preds = %3
  %68 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i8*, i8** @SQ_IND_CMD_MODE_BROADCAST, align 8
  %71 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %74 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %80 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.HsaDbgWaveMsgAMDGen2*, %struct.HsaDbgWaveMsgAMDGen2** %11, align 8
  %86 = getelementptr inbounds %struct.HsaDbgWaveMsgAMDGen2, %struct.HsaDbgWaveMsgAMDGen2* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %94

91:                                               ; preds = %3
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %148

94:                                               ; preds = %67, %57, %21
  %95 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %96 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %133 [
    i32 131, label %98
    i32 129, label %102
    i32 130, label %106
    i32 132, label %110
    i32 128, label %114
  ]

98:                                               ; preds = %94
  %99 = load i32, i32* @SQ_IND_CMD_CMD_HALT, align 4
  %100 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %136

102:                                              ; preds = %94
  %103 = load i32, i32* @SQ_IND_CMD_CMD_RESUME, align 4
  %104 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %136

106:                                              ; preds = %94
  %107 = load i32, i32* @SQ_IND_CMD_CMD_KILL, align 4
  %108 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %136

110:                                              ; preds = %94
  %111 = load i32, i32* @SQ_IND_CMD_CMD_DEBUG, align 4
  %112 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %136

114:                                              ; preds = %94
  %115 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %116 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MAX_TRAPID, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* @SQ_IND_CMD_CMD_TRAP, align 4
  %122 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %125 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = bitcast %union.SQ_CMD_BITS* %9 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %132

129:                                              ; preds = %114
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %120
  br label %136

133:                                              ; preds = %94
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %133, %132, %110, %106, %102, %98
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %union.SQ_CMD_BITS*, %union.SQ_CMD_BITS** %6, align 8
  %141 = bitcast %union.SQ_CMD_BITS* %140 to i8*
  %142 = bitcast %union.SQ_CMD_BITS* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 32, i1 false)
  %143 = load %union.GRBM_GFX_INDEX_BITS*, %union.GRBM_GFX_INDEX_BITS** %7, align 8
  %144 = bitcast %union.GRBM_GFX_INDEX_BITS* %143 to i8*
  %145 = bitcast %union.GRBM_GFX_INDEX_BITS* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 24, i1 false)
  br label %146

146:                                              ; preds = %139, %136
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %91
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { %struct.pipe_state, %struct.nv10_gr* }
%struct.pipe_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV10_PGRAPH_XFMODE0 = common dso_local global i32 0, align 4
@NV10_PGRAPH_XFMODE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_ADDRESS = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_gr_chan*)* @nv10_gr_load_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_gr_load_pipe(%struct.nv10_gr_chan* %0) #0 {
  %2 = alloca %struct.nv10_gr_chan*, align 8
  %3 = alloca %struct.nv10_gr*, align 8
  %4 = alloca %struct.pipe_state*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %2, align 8
  %9 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %10 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %9, i32 0, i32 1
  %11 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  store %struct.nv10_gr* %11, %struct.nv10_gr** %3, align 8
  %12 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %13 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %12, i32 0, i32 0
  store %struct.pipe_state* %13, %struct.pipe_state** %4, align 8
  %14 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %15 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %5, align 8
  %20 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %21 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %20, i32 0, i32 0
  %22 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %21)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 %30, i32 268435456)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %33 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 %33, i32 0)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %36 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 %36, i32 25792)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %45, %1
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i32 %43, i32 1065353216)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %38

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %56, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %49

59:                                               ; preds = %49
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %62 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 %61, i32 27312)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %70, %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %68 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 %68, i32 1065353216)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %63

73:                                               ; preds = %63
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %75 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %76 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 %75, i32 27264)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %84, %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %82 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %77

87:                                               ; preds = %77
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %89 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %89, i32 64)
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %92 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %93 = call i32 @nvkm_wr32(%struct.nvkm_device* %91, i32 %92, i32 8)
  %94 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %95 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %96 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %94, i32 %97, i32 512)
  %99 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %100 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %99, i32 0, i32 0
  %101 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %100)
  %102 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %103 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @nvkm_wr32(%struct.nvkm_device* %102, i32 %103, i32 %104)
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %107 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %106, i32 %107, i32 %108)
  %110 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %111 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %112 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %110, i32 %113, i32 25600)
  %115 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %116 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %117 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %115, i32 %118, i32 26624)
  %120 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %121 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %122 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %120, i32 %123, i32 27648)
  %125 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %126 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %127 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %125, i32 %128, i32 28672)
  %130 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %131 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %132 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %130, i32 %133, i32 29696)
  %135 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %136 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %137 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %135, i32 %138, i32 30720)
  %140 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %141 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %142 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %140, i32 %143, i32 17408)
  %145 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %146 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %147 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %145, i32 %148, i32 0)
  %150 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %151 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %152 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @PIPE_RESTORE(%struct.nv10_gr* %150, i32 %153, i32 64)
  %155 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %156 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %155, i32 0, i32 0
  %157 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %156)
  ret void
}

declare dso_local i32 @nv04_gr_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @PIPE_RESTORE(%struct.nv10_gr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

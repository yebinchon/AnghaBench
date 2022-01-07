; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_hw_sequencer_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_hw_sequencer_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@dcn20_unblank_stream = common dso_local global i32 0, align 4
@dcn20_update_plane_addr = common dso_local global i32 0, align 4
@dcn20_enable_stream_timing = common dso_local global i32 0, align 4
@dcn20_program_tripleBuffer = common dso_local global i32 0, align 4
@dcn20_set_input_transfer_func = common dso_local global i32 0, align 4
@dcn20_set_output_transfer_func = common dso_local global i32 0, align 4
@dcn20_apply_ctx_for_surface = common dso_local global i32 0, align 4
@dcn20_pipe_control_lock = common dso_local global i32 0, align 4
@dcn20_pipe_control_lock_global = common dso_local global i32 0, align 4
@dcn20_optimize_bandwidth = common dso_local global i32 0, align 4
@dcn20_prepare_bandwidth = common dso_local global i32 0, align 4
@dcn20_update_bandwidth = common dso_local global i32 0, align 4
@dcn20_enable_writeback = common dso_local global i32 0, align 4
@dcn20_disable_writeback = common dso_local global i32 0, align 4
@dcn20_program_output_csc = common dso_local global i32 0, align 4
@dcn20_update_odm = common dso_local global i32 0, align 4
@dcn20_blank_pixel_data = common dso_local global i32 0, align 4
@dcn20_dmdata_status_done = common dso_local global i32 0, align 4
@dcn20_program_dmdata_engine = common dso_local global i32 0, align 4
@dcn20_enable_stream = common dso_local global i32 0, align 4
@dcn20_disable_stream = common dso_local global i32 0, align 4
@dcn20_init_sys_ctx = common dso_local global i32 0, align 4
@dcn20_init_vm_ctx = common dso_local global i32 0, align 4
@dcn20_disable_stream_gating = common dso_local global i32 0, align 4
@dcn20_enable_stream_gating = common dso_local global i32 0, align 4
@dcn20_setup_vupdate_interrupt = common dso_local global i32 0, align 4
@dcn20_reset_hw_ctx_wrap = common dso_local global i32 0, align 4
@dcn20_update_mpcc = common dso_local global i32 0, align 4
@dcn20_set_flip_control_gsl = common dso_local global i32 0, align 4
@dcn20_init_blank = common dso_local global i32 0, align 4
@dcn20_disable_plane = common dso_local global i32 0, align 4
@dcn20_plane_atomic_disable = common dso_local global i32 0, align 4
@dcn20_enable_power_gating_plane = common dso_local global i32 0, align 4
@dcn20_dpp_pg_control = common dso_local global i32 0, align 4
@dcn20_hubp_pg_control = common dso_local global i32 0, align 4
@dcn20_disable_vga = common dso_local global i32 0, align 4
@dcn20_fpga_init_hw = common dso_local global i32 0, align 4
@dcn20_dsc_pg_control = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_hw_sequencer_construct(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %3 = load %struct.dc*, %struct.dc** %2, align 8
  %4 = call i32 @dcn10_hw_sequencer_construct(%struct.dc* %3)
  %5 = load i32, i32* @dcn20_unblank_stream, align 4
  %6 = load %struct.dc*, %struct.dc** %2, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 38
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @dcn20_update_plane_addr, align 4
  %10 = load %struct.dc*, %struct.dc** %2, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 37
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @dcn20_enable_stream_timing, align 4
  %14 = load %struct.dc*, %struct.dc** %2, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 36
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @dcn20_program_tripleBuffer, align 4
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 35
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @dcn20_set_input_transfer_func, align 4
  %22 = load %struct.dc*, %struct.dc** %2, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 34
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @dcn20_set_output_transfer_func, align 4
  %26 = load %struct.dc*, %struct.dc** %2, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 33
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @dcn20_apply_ctx_for_surface, align 4
  %30 = load %struct.dc*, %struct.dc** %2, align 8
  %31 = getelementptr inbounds %struct.dc, %struct.dc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 32
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @dcn20_pipe_control_lock, align 4
  %34 = load %struct.dc*, %struct.dc** %2, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 31
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @dcn20_pipe_control_lock_global, align 4
  %38 = load %struct.dc*, %struct.dc** %2, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 30
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @dcn20_optimize_bandwidth, align 4
  %42 = load %struct.dc*, %struct.dc** %2, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 29
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @dcn20_prepare_bandwidth, align 4
  %46 = load %struct.dc*, %struct.dc** %2, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 28
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @dcn20_update_bandwidth, align 4
  %50 = load %struct.dc*, %struct.dc** %2, align 8
  %51 = getelementptr inbounds %struct.dc, %struct.dc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 27
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @dcn20_enable_writeback, align 4
  %54 = load %struct.dc*, %struct.dc** %2, align 8
  %55 = getelementptr inbounds %struct.dc, %struct.dc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 26
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @dcn20_disable_writeback, align 4
  %58 = load %struct.dc*, %struct.dc** %2, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 25
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @dcn20_program_output_csc, align 4
  %62 = load %struct.dc*, %struct.dc** %2, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 24
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @dcn20_update_odm, align 4
  %66 = load %struct.dc*, %struct.dc** %2, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 23
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @dcn20_blank_pixel_data, align 4
  %70 = load %struct.dc*, %struct.dc** %2, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 22
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @dcn20_dmdata_status_done, align 4
  %74 = load %struct.dc*, %struct.dc** %2, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 21
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @dcn20_program_dmdata_engine, align 4
  %78 = load %struct.dc*, %struct.dc** %2, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 20
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @dcn20_enable_stream, align 4
  %82 = load %struct.dc*, %struct.dc** %2, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 19
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @dcn20_disable_stream, align 4
  %86 = load %struct.dc*, %struct.dc** %2, align 8
  %87 = getelementptr inbounds %struct.dc, %struct.dc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 18
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @dcn20_init_sys_ctx, align 4
  %90 = load %struct.dc*, %struct.dc** %2, align 8
  %91 = getelementptr inbounds %struct.dc, %struct.dc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 17
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @dcn20_init_vm_ctx, align 4
  %94 = load %struct.dc*, %struct.dc** %2, align 8
  %95 = getelementptr inbounds %struct.dc, %struct.dc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 16
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @dcn20_disable_stream_gating, align 4
  %98 = load %struct.dc*, %struct.dc** %2, align 8
  %99 = getelementptr inbounds %struct.dc, %struct.dc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 15
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @dcn20_enable_stream_gating, align 4
  %102 = load %struct.dc*, %struct.dc** %2, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 14
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @dcn20_setup_vupdate_interrupt, align 4
  %106 = load %struct.dc*, %struct.dc** %2, align 8
  %107 = getelementptr inbounds %struct.dc, %struct.dc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 13
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @dcn20_reset_hw_ctx_wrap, align 4
  %110 = load %struct.dc*, %struct.dc** %2, align 8
  %111 = getelementptr inbounds %struct.dc, %struct.dc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 12
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @dcn20_update_mpcc, align 4
  %114 = load %struct.dc*, %struct.dc** %2, align 8
  %115 = getelementptr inbounds %struct.dc, %struct.dc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 11
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @dcn20_set_flip_control_gsl, align 4
  %118 = load %struct.dc*, %struct.dc** %2, align 8
  %119 = getelementptr inbounds %struct.dc, %struct.dc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 10
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @dcn20_init_blank, align 4
  %122 = load %struct.dc*, %struct.dc** %2, align 8
  %123 = getelementptr inbounds %struct.dc, %struct.dc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 9
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @dcn20_disable_plane, align 4
  %126 = load %struct.dc*, %struct.dc** %2, align 8
  %127 = getelementptr inbounds %struct.dc, %struct.dc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 8
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @dcn20_plane_atomic_disable, align 4
  %130 = load %struct.dc*, %struct.dc** %2, align 8
  %131 = getelementptr inbounds %struct.dc, %struct.dc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 7
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @dcn20_enable_power_gating_plane, align 4
  %134 = load %struct.dc*, %struct.dc** %2, align 8
  %135 = getelementptr inbounds %struct.dc, %struct.dc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @dcn20_dpp_pg_control, align 4
  %138 = load %struct.dc*, %struct.dc** %2, align 8
  %139 = getelementptr inbounds %struct.dc, %struct.dc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @dcn20_hubp_pg_control, align 4
  %142 = load %struct.dc*, %struct.dc** %2, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i32 %141, i32* %144, align 8
  %145 = load %struct.dc*, %struct.dc** %2, align 8
  %146 = getelementptr inbounds %struct.dc, %struct.dc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32* null, i32** %147, align 8
  %148 = load i32, i32* @dcn20_disable_vga, align 4
  %149 = load %struct.dc*, %struct.dc** %2, align 8
  %150 = getelementptr inbounds %struct.dc, %struct.dc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 4
  %152 = load %struct.dc*, %struct.dc** %2, align 8
  %153 = getelementptr inbounds %struct.dc, %struct.dc* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %1
  %160 = load i32, i32* @dcn20_fpga_init_hw, align 4
  %161 = load %struct.dc*, %struct.dc** %2, align 8
  %162 = getelementptr inbounds %struct.dc, %struct.dc* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 8
  %164 = load %struct.dc*, %struct.dc** %2, align 8
  %165 = getelementptr inbounds %struct.dc, %struct.dc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %159, %1
  ret void
}

declare dso_local i32 @dcn10_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

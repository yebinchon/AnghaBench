; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_io_write_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_end_io_write_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { i32, i64, %struct.pblk* }
%struct.pblk = type { i32, i32 }
%struct.pblk_g_ctx = type { %struct.pblk_line* }
%struct.pblk_line = type { %struct.TYPE_2__*, i32, %struct.pblk_emeta* }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_emeta = type { i32, i32 }
%struct.ppa_addr = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"metadata I/O failed. Line %d\0A\00", align 1
@pblk_line_close_ws = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PBLK_WRITE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_rq*)* @pblk_end_io_write_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_end_io_write_meta(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_g_ctx*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_emeta*, align 8
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca i32, align 4
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %9 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %10 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %9, i32 0, i32 2
  %11 = load %struct.pblk*, %struct.pblk** %10, align 8
  store %struct.pblk* %11, %struct.pblk** %3, align 8
  %12 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %13 = call %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %12)
  store %struct.pblk_g_ctx* %13, %struct.pblk_g_ctx** %4, align 8
  %14 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %14, i32 0, i32 0
  %16 = load %struct.pblk_line*, %struct.pblk_line** %15, align 8
  store %struct.pblk_line* %16, %struct.pblk_line** %5, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 2
  %19 = load %struct.pblk_emeta*, %struct.pblk_emeta** %18, align 8
  store %struct.pblk_emeta* %19, %struct.pblk_emeta** %6, align 8
  %20 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %21 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %20)
  store %struct.ppa_addr* %21, %struct.ppa_addr** %7, align 8
  %22 = load %struct.pblk*, %struct.pblk** %3, align 8
  %23 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %23, i64 0
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pblk_up_chunk(%struct.pblk* %22, i32 %26)
  %28 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %29 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.pblk*, %struct.pblk** %3, align 8
  %34 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %35 = call i32 @pblk_log_write_err(%struct.pblk* %33, %struct.nvm_rq* %34)
  %36 = load %struct.pblk*, %struct.pblk** %3, align 8
  %37 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pblk_err(%struct.pblk* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %53

45:                                               ; preds = %1
  %46 = call i64 (...) @trace_pblk_chunk_state_enabled()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.pblk*, %struct.pblk** %3, align 8
  %50 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %51 = call i32 @pblk_check_chunk_state_update(%struct.pblk* %49, %struct.nvm_rq* %50)
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %55 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pblk_emeta*, %struct.pblk_emeta** %6, align 8
  %58 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %57, i32 0, i32 1
  %59 = call i32 @atomic_add_return(i32 %56, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.pblk_emeta*, %struct.pblk_emeta** %6, align 8
  %62 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %53
  %66 = load %struct.pblk*, %struct.pblk** %3, align 8
  %67 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %68 = load i32, i32* @pblk_line_close_ws, align 4
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = load %struct.pblk*, %struct.pblk** %3, align 8
  %71 = getelementptr inbounds %struct.pblk, %struct.pblk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pblk_gen_run_ws(%struct.pblk* %66, %struct.pblk_line* %67, i32* null, i32 %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %53
  %75 = load %struct.pblk*, %struct.pblk** %3, align 8
  %76 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %77 = load i32, i32* @PBLK_WRITE_INT, align 4
  %78 = call i32 @pblk_free_rqd(%struct.pblk* %75, %struct.nvm_rq* %76, i32 %77)
  %79 = load %struct.pblk*, %struct.pblk** %3, align 8
  %80 = getelementptr inbounds %struct.pblk, %struct.pblk* %79, i32 0, i32 0
  %81 = call i32 @atomic_dec(i32* %80)
  ret void
}

declare dso_local %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_up_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_log_write_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i64 @trace_pblk_chunk_state_enabled(...) #1

declare dso_local i32 @pblk_check_chunk_state_update(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @pblk_gen_run_ws(%struct.pblk*, %struct.pblk_line*, i32*, i32, i32, i32) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

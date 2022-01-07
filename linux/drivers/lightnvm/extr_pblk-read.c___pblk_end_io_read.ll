; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c___pblk_end_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c___pblk_end_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, %struct.TYPE_2__*, %struct.nvm_tgt_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_tgt_dev = type { i32 }
%struct.nvm_rq = type { i32, i64, %struct.bio* }
%struct.bio = type { i32 }
%struct.pblk_g_ctx = type { i64, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@PBLK_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*, i32)* @__pblk_end_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pblk_end_io_read(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.pblk_g_ctx*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pblk*, %struct.pblk** %4, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 4
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %12, align 8
  store %struct.nvm_tgt_dev* %13, %struct.nvm_tgt_dev** %7, align 8
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %15 = call %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %14)
  store %struct.pblk_g_ctx* %15, %struct.pblk_g_ctx** %8, align 8
  %16 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %16, i32 0, i32 2
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %9, align 8
  %19 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %23 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REQ_OP_READ, align 4
  %26 = load %struct.pblk*, %struct.pblk** %4, align 8
  %27 = getelementptr inbounds %struct.pblk, %struct.pblk* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @generic_end_io_acct(i32 %24, i32 %25, i32* %29, i64 %30)
  %32 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %33 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.pblk*, %struct.pblk** %4, align 8
  %38 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %39 = call i32 @pblk_log_read_err(%struct.pblk* %37, %struct.nvm_rq* %38)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load %struct.pblk*, %struct.pblk** %4, align 8
  %42 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %43 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pblk_read_check_seq(%struct.pblk* %41, %struct.nvm_rq* %42, i32 %45)
  %47 = load %struct.bio*, %struct.bio** %9, align 8
  %48 = call i32 @bio_put(%struct.bio* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.pblk*, %struct.pblk** %4, align 8
  %53 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %54 = call i32 @pblk_rq_to_line_put(%struct.pblk* %52, %struct.nvm_rq* %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.pblk*, %struct.pblk** %4, align 8
  %57 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %58 = load i32, i32* @PBLK_READ, align 4
  %59 = call i32 @pblk_free_rqd(%struct.pblk* %56, %struct.nvm_rq* %57, i32 %58)
  %60 = load %struct.pblk*, %struct.pblk** %4, align 8
  %61 = getelementptr inbounds %struct.pblk, %struct.pblk* %60, i32 0, i32 0
  %62 = call i32 @atomic_dec(i32* %61)
  ret void
}

declare dso_local %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i32 @generic_end_io_acct(i32, i32, i32*, i64) #1

declare dso_local i32 @pblk_log_read_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_read_check_seq(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @pblk_rq_to_line_put(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

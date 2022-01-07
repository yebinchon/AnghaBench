; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_regs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_dfx_registers = type { i64, i64 }
%struct.seq_file = type { %struct.hisi_qm* }
%struct.hisi_qm = type { i64, i64 }

@QM_HW_PF = common dso_local global i64 0, align 8
@qm_dfx_regs = common dso_local global %struct.qm_dfx_registers* null, align 8
@qm_vf_dfx_regs = common dso_local global %struct.qm_dfx_registers* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s= 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qm_regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_regs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca %struct.qm_dfx_registers*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %9, align 8
  store %struct.hisi_qm* %10, %struct.hisi_qm** %5, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QM_HW_PF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** @qm_dfx_regs, align 8
  store %struct.qm_dfx_registers* %17, %struct.qm_dfx_registers** %6, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** @qm_vf_dfx_regs, align 8
  store %struct.qm_dfx_registers* %19, %struct.qm_dfx_registers** %6, align 8
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %6, align 8
  %23 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %28 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %6, align 8
  %31 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %6, align 8
  %37 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39)
  %41 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %6, align 8
  %42 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %41, i32 1
  store %struct.qm_dfx_registers* %42, %struct.qm_dfx_registers** %6, align 8
  br label %21

43:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64 }
%struct.fsi_msg = type { i32, i32 }

@CMD_DATA = common dso_local global i64 0, align 8
@CMD_COMMAND = common dso_local global i32 0, align 4
@CMD_REG_CLEN_SHIFT = common dso_local global i32 0, align 4
@CMD_REG_RLEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, %struct.fsi_msg*, i32)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request(%struct.fsi_master_acf* %0, %struct.fsi_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.fsi_master_acf*, align 8
  %5 = alloca %struct.fsi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %4, align 8
  store %struct.fsi_msg* %1, %struct.fsi_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %9 = load %struct.fsi_msg*, %struct.fsi_msg** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @trace_fsi_master_acf_send_request(%struct.fsi_master_acf* %8, %struct.fsi_msg* %9, i32 %10)
  %12 = load %struct.fsi_msg*, %struct.fsi_msg** %5, align 8
  %13 = getelementptr inbounds %struct.fsi_msg, %struct.fsi_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 32
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CMD_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @iowrite32be(i32 %15, i64 %20)
  %22 = load %struct.fsi_msg*, %struct.fsi_msg** %5, align 8
  %23 = getelementptr inbounds %struct.fsi_msg, %struct.fsi_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CMD_DATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = add nsw i64 %29, 4
  %31 = call i32 @iowrite32be(i32 %24, i64 %30)
  %32 = load i32, i32* @CMD_COMMAND, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.fsi_msg*, %struct.fsi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.fsi_msg, %struct.fsi_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CMD_REG_CLEN_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CMD_REG_RLEN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %3
  %49 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @do_copro_command(%struct.fsi_master_acf* %49, i32 %50)
  ret i32 %51
}

declare dso_local i32 @trace_fsi_master_acf_send_request(%struct.fsi_master_acf*, %struct.fsi_msg*, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @do_copro_command(%struct.fsi_master_acf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

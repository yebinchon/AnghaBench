; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_write_tx_serdes_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_write_tx_serdes_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32 }
%struct.txdds_ent = type { i32, i32, i32, i32 }

@krp_tx_deemph_override = common dso_local global i32 0, align 4
@IBSD_TX_DEEMPHASIS_OVERRIDE_0 = common dso_local global i32 0, align 4
@txampcntl_d2a = common dso_local global i32 0, align 4
@txc0_ena = common dso_local global i32 0, align 4
@txcp1_ena = common dso_local global i32 0, align 4
@txcn1_ena = common dso_local global i32 0, align 4
@tx_override_deemphasis_select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, %struct.txdds_ent*)* @write_tx_serdes_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tx_serdes_param(%struct.qib_pportdata* %0, %struct.txdds_ent* %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.txdds_ent*, align 8
  %5 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store %struct.txdds_ent* %1, %struct.txdds_ent** %4, align 8
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = load i32, i32* @krp_tx_deemph_override, align 4
  %8 = call i32 @qib_read_kreg_port(%struct.qib_pportdata* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %10 = load i32, i32* @txampcntl_d2a, align 4
  %11 = call i32 @SYM_MASK(i32 %9, i32 %10)
  %12 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %13 = load i32, i32* @txc0_ena, align 4
  %14 = call i32 @SYM_MASK(i32 %12, i32 %13)
  %15 = or i32 %11, %14
  %16 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %17 = load i32, i32* @txcp1_ena, align 4
  %18 = call i32 @SYM_MASK(i32 %16, i32 %17)
  %19 = or i32 %15, %18
  %20 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %21 = load i32, i32* @txcn1_ena, align 4
  %22 = call i32 @SYM_MASK(i32 %20, i32 %21)
  %23 = or i32 %19, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %28 = load i32, i32* @tx_override_deemphasis_select, align 4
  %29 = call i32 @SYM_MASK(i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.txdds_ent*, %struct.txdds_ent** %4, align 8
  %33 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %36 = load i32, i32* @txampcntl_d2a, align 4
  %37 = call i32 @SYM_RMASK(i32 %35, i32 %36)
  %38 = and i32 %34, %37
  %39 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %40 = load i32, i32* @txampcntl_d2a, align 4
  %41 = call i32 @SYM_LSB(i32 %39, i32 %40)
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.txdds_ent*, %struct.txdds_ent** %4, align 8
  %46 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %49 = load i32, i32* @txc0_ena, align 4
  %50 = call i32 @SYM_RMASK(i32 %48, i32 %49)
  %51 = and i32 %47, %50
  %52 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %53 = load i32, i32* @txc0_ena, align 4
  %54 = call i32 @SYM_LSB(i32 %52, i32 %53)
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.txdds_ent*, %struct.txdds_ent** %4, align 8
  %59 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %62 = load i32, i32* @txcp1_ena, align 4
  %63 = call i32 @SYM_RMASK(i32 %61, i32 %62)
  %64 = and i32 %60, %63
  %65 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %66 = load i32, i32* @txcp1_ena, align 4
  %67 = call i32 @SYM_LSB(i32 %65, i32 %66)
  %68 = shl i32 %64, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.txdds_ent*, %struct.txdds_ent** %4, align 8
  %72 = getelementptr inbounds %struct.txdds_ent, %struct.txdds_ent* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %75 = load i32, i32* @txcn1_ena, align 4
  %76 = call i32 @SYM_RMASK(i32 %74, i32 %75)
  %77 = and i32 %73, %76
  %78 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %79 = load i32, i32* @txcn1_ena, align 4
  %80 = call i32 @SYM_LSB(i32 %78, i32 %79)
  %81 = shl i32 %77, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %85 = load i32, i32* @krp_tx_deemph_override, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @qib_read_kreg_port(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @SYM_RMASK(i32, i32) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

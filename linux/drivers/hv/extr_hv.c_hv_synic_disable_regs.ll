; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv.c_hv_synic_disable_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv.c_hv_synic_disable_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hv_synic_sint = type { i32 }
%union.hv_synic_simp = type { i64 }
%union.hv_synic_siefp = type { i64 }
%union.hv_synic_scontrol = type { i64 }

@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_synic_disable_regs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.hv_synic_sint, align 4
  %4 = alloca %union.hv_synic_simp, align 8
  %5 = alloca %union.hv_synic_siefp, align 8
  %6 = alloca %union.hv_synic_scontrol, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %8 = bitcast %union.hv_synic_sint* %3 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hv_get_synint_state(i32 %7, i32 %9)
  %11 = bitcast %union.hv_synic_sint* %3 to i32*
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %13 = bitcast %union.hv_synic_sint* %3 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hv_set_synint_state(i32 %12, i32 %14)
  %16 = bitcast %union.hv_synic_simp* %4 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hv_get_simp(i32 %17)
  %19 = bitcast %union.hv_synic_simp* %4 to i64*
  store i64 0, i64* %19, align 8
  %20 = bitcast %union.hv_synic_simp* %4 to i64*
  store i64 0, i64* %20, align 8
  %21 = bitcast %union.hv_synic_simp* %4 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hv_set_simp(i32 %22)
  %24 = bitcast %union.hv_synic_siefp* %5 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hv_get_siefp(i32 %25)
  %27 = bitcast %union.hv_synic_siefp* %5 to i64*
  store i64 0, i64* %27, align 8
  %28 = bitcast %union.hv_synic_siefp* %5 to i64*
  store i64 0, i64* %28, align 8
  %29 = bitcast %union.hv_synic_siefp* %5 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hv_set_siefp(i32 %30)
  %32 = bitcast %union.hv_synic_scontrol* %6 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hv_get_synic_state(i32 %33)
  %35 = bitcast %union.hv_synic_scontrol* %6 to i64*
  store i64 0, i64* %35, align 8
  %36 = bitcast %union.hv_synic_scontrol* %6 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hv_set_synic_state(i32 %37)
  ret void
}

declare dso_local i32 @hv_get_synint_state(i32, i32) #1

declare dso_local i32 @hv_set_synint_state(i32, i32) #1

declare dso_local i32 @hv_get_simp(i32) #1

declare dso_local i32 @hv_set_simp(i32) #1

declare dso_local i32 @hv_get_siefp(i32) #1

declare dso_local i32 @hv_set_siefp(i32) #1

declare dso_local i32 @hv_get_synic_state(i32) #1

declare dso_local i32 @hv_set_synic_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

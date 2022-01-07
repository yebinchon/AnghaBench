; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_i10nm_check_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_i10nm_check_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skx_imc = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"ch%d mcmtr reg %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skx_imc*, i32)* @i10nm_check_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i10nm_check_ecc(%struct.skx_imc* %0, i32 %1) #0 {
  %3 = alloca %struct.skx_imc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skx_imc* %0, %struct.skx_imc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skx_imc*, %struct.skx_imc** %3, align 8
  %7 = getelementptr inbounds %struct.skx_imc, %struct.skx_imc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 134904
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 16384
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GET_BITFIELD(i32 %19, i32 2, i32 2)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c" FMD CTRL2 %#16llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"  AAD1 offset %llu length %llu bytes\0A\00", align 1
@SPU2_AAD1_OFFSET = common dso_local global i32 0, align 4
@SPU2_AAD1_LEN = common dso_local global i32 0, align 4
@SPU2_AAD1_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"  AAD2 offset %llu\0A\00", align 1
@SPU2_AAD2_OFFSET = common dso_local global i32 0, align 4
@SPU2_AAD2_OFFSET_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"  Payload offset %llu\0A\00", align 1
@SPU2_PL_OFFSET = common dso_local global i32 0, align 4
@SPU2_PL_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spu2_dump_fmd_ctrl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_dump_fmd_ctrl2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, i32, ...) @packet_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SPU2_AAD1_OFFSET, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SPU2_AAD1_LEN, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SPU2_AAD1_LEN_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = call i32 (i8*, i32, ...) @packet_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SPU2_AAD2_OFFSET, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SPU2_AAD2_OFFSET_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = call i32 (i8*, i32, ...) @packet_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SPU2_PL_OFFSET, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SPU2_PL_OFFSET_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = call i32 (i8*, i32, ...) @packet_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @packet_log(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

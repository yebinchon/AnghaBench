; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_opa_pstate_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_opa_pstate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opa_pstate_name.port_physical_names = internal constant [12 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"PHYS_NOP\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reserved1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PHYS_POLL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PHYS_DISABLED\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PHYS_TRAINING\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PHYS_LINKUP\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"PHYS_LINK_ERR_RECOVER\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"PHYS_PHY_TEST\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reserved8\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"PHYS_OFFLINE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"PHYS_GANGED\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PHYS_TEST\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @opa_pstate_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @opa_pstate_name.port_physical_names, i64 0, i64 0))
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [12 x i8*], [12 x i8*]* @opa_pstate_name.port_physical_names, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

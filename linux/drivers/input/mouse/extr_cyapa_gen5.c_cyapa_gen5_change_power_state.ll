; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_change_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_change_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@__const.cyapa_gen5_change_power_state.cmd = private unnamed_addr constant [8 x i32] [i32 4, i32 0, i32 6, i32 0, i32 47, i32 0, i32 8, i32 1], align 16
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32)* @cyapa_gen5_change_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_change_power_state(%struct.cyapa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.cyapa_gen5_change_power_state.cmd to i8*), i64 32, i1 false)
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %11, i32* %12, align 4
  store i32 24, i32* %8, align 4
  %13 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %17 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %13, i32* %14, i32 32, i32* %15, i32* %8, i32 500, i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %22 = call i32 @VALID_CMD_RESP_HEADER(i32* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %26 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24, %20, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @VALID_CMD_RESP_HEADER(i32*, i32) #2

declare dso_local i32 @PIP_CMD_COMPLETE_SUCCESS(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_try_poll_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_try_poll_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.cyapa_reg_data = type { i32, i32 }

@CYAPA_CMD_GROUP_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OP_STATUS_SRC = common dso_local global i32 0, align 4
@OP_STATUS_DEV = common dso_local global i32 0, align 4
@CYAPA_DEV_NORMAL = common dso_local global i32 0, align 4
@OP_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen3_try_poll_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_try_poll_handler(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_reg_data, align 4
  %5 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %6 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %7 = load i32, i32* @CYAPA_CMD_GROUP_DATA, align 4
  %8 = bitcast %struct.cyapa_reg_data* %4 to i32*
  %9 = call i32 @cyapa_read_block(%struct.cyapa* %6, i32 %7, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OP_STATUS_SRC, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @OP_STATUS_SRC, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OP_STATUS_DEV, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OP_DATA_VALID, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @OP_DATA_VALID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %23, %16
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %42 = call i32 @cyapa_gen3_event_process(%struct.cyapa* %41, %struct.cyapa_reg_data* %4)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %37, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @cyapa_read_block(%struct.cyapa*, i32, i32*) #1

declare dso_local i32 @cyapa_gen3_event_process(%struct.cyapa*, %struct.cyapa_reg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

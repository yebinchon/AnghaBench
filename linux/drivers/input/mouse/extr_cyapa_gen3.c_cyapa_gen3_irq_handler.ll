; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cyapa_reg_data = type { i32, i32 }

@CYAPA_CMD_GROUP_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to read report data, (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OP_STATUS_SRC = common dso_local global i32 0, align 4
@OP_STATUS_DEV = common dso_local global i32 0, align 4
@CYAPA_DEV_NORMAL = common dso_local global i32 0, align 4
@OP_DATA_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid device state bytes: %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen3_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_irq_handler(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cyapa_reg_data, align 4
  %6 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %7 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %8 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %12 = load i32, i32* @CYAPA_CMD_GROUP_DATA, align 4
  %13 = bitcast %struct.cyapa_reg_data* %5 to i32*
  %14 = call i32 @cyapa_read_block(%struct.cyapa* %11, i32 %12, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OP_STATUS_SRC, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @OP_STATUS_SRC, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OP_STATUS_DEV, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OP_DATA_VALID, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @OP_DATA_VALID, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38, %31, %24
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.cyapa_reg_data, %struct.cyapa_reg_data* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %38
  %55 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %56 = call i32 @cyapa_gen3_event_process(%struct.cyapa* %55, %struct.cyapa_reg_data* %5)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %45, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cyapa_read_block(%struct.cyapa*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @cyapa_gen3_event_process(%struct.cyapa*, %struct.cyapa_reg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

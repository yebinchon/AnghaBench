; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rcar_dmac = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to read dma-channels property\0A\00", align 1
@RCAR_DMAC_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid number of channels %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rcar_dmac*)* @rcar_dmac_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_parse_of(%struct.device* %0, %struct.rcar_dmac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rcar_dmac*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rcar_dmac* %1, %struct.rcar_dmac** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %13 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %12, i32 0, i32 0
  %14 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %28 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RCAR_DMAC_MAX_CHANNELS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26, %21
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %35 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %26
  %41 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %42 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @GENMASK(i32 %44, i32 0)
  %46 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %47 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %32, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

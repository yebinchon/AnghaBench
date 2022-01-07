; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dma_init_virtual_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dma_init_virtual_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.pl08x_dma_chan* }
%struct.pl08x_dma_chan = type { i32, i8*, %struct.TYPE_6__, i32, %struct.pl08x_dma_chan*, i32, i32, %struct.pl08x_driver_data* }
%struct.TYPE_6__ = type { i32 }
%struct.dma_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PL08X_CHAN_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"memcpy%d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"initialize virtual channel \22%s\22\0A\00", align 1
@pl08x_desc_free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"initialized %d virtual %s channels\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_driver_data*, %struct.dma_device*, i32, i32)* @pl08x_dma_init_virtual_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_dma_init_virtual_channels(%struct.pl08x_driver_data* %0, %struct.dma_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pl08x_driver_data*, align 8
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pl08x_dma_chan*, align 8
  %11 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %6, align 8
  store %struct.dma_device* %1, %struct.dma_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %13 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %120, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %123

19:                                               ; preds = %15
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 48, i32 %20)
  %22 = bitcast i8* %21 to %struct.pl08x_dma_chan*
  store %struct.pl08x_dma_chan* %22, %struct.pl08x_dma_chan** %10, align 8
  %23 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %24 = icmp ne %struct.pl08x_dma_chan* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %135

28:                                               ; preds = %19
  %29 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %30 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %31 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %30, i32 0, i32 7
  store %struct.pl08x_driver_data* %29, %struct.pl08x_driver_data** %31, align 8
  %32 = load i32, i32* @PL08X_CHAN_IDLE, align 4
  %33 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %34 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %36 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %41 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %44, i64 %46
  %48 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %49 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %48, i32 0, i32 4
  store %struct.pl08x_dma_chan* %47, %struct.pl08x_dma_chan** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %52 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %54 = call i32 @pl08x_dma_slave_init(%struct.pl08x_dma_chan* %53)
  br label %103

55:                                               ; preds = %28
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 48, i32 %56)
  %58 = bitcast i8* %57 to %struct.pl08x_dma_chan*
  %59 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %60 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %59, i32 0, i32 4
  store %struct.pl08x_dma_chan* %58, %struct.pl08x_dma_chan** %60, align 8
  %61 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %62 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %61, i32 0, i32 4
  %63 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %62, align 8
  %64 = icmp ne %struct.pl08x_dma_chan* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %67 = call i32 @kfree(%struct.pl08x_dma_chan* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %135

70:                                               ; preds = %55
  %71 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %72 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %71, i32 0, i32 4
  %73 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %72, align 8
  %74 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %76 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %81 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %80, i32 0, i32 4
  %82 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %81, align 8
  %83 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %82, i32 0, i32 5
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @kasprintf(i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %88 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %90 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %70
  %94 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %95 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %94, i32 0, i32 4
  %96 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %95, align 8
  %97 = call i32 @kfree(%struct.pl08x_dma_chan* %96)
  %98 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %99 = call i32 @kfree(%struct.pl08x_dma_chan* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %135

102:                                              ; preds = %70
  br label %103

103:                                              ; preds = %102, %39
  %104 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %105 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %109 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_dbg(i32* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @pl08x_desc_free, align 4
  %113 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %114 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %10, align 8
  %117 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %116, i32 0, i32 2
  %118 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %119 = call i32 @vchan_init(%struct.TYPE_6__* %117, %struct.dma_device* %118)
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %15

123:                                              ; preds = %15
  %124 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %6, align 8
  %125 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)
  %133 = call i32 @dev_info(i32* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128, i8* %132)
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %123, %93, %65, %25
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pl08x_dma_slave_init(%struct.pl08x_dma_chan*) #1

declare dso_local i32 @kfree(%struct.pl08x_dma_chan*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_6__*, %struct.dma_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

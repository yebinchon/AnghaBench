; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_spi_manage_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_spi_manage_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_spi_xport = type { i32, i32, i32, %struct.spi_transfer*, %struct.spi_transfer*, %struct.TYPE_6__, i32*, i32*, %struct.spi_device* }
%struct.spi_transfer = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.spi_device = type { i32 }

@RMI_SPI_DEFAULT_XFER_BUF_SIZE = common dso_local global i32 0, align 4
@RMI_SPI_XFER_SIZE_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_spi_xport*, i32)* @rmi_spi_manage_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_spi_manage_pools(%struct.rmi_spi_xport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_spi_xport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.rmi_spi_xport* %0, %struct.rmi_spi_xport** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %12 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %11, i32 0, i32 8
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %6, align 8
  %14 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %15 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %20 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @RMI_SPI_DEFAULT_XFER_BUF_SIZE, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %21, %18 ], [ %23, %22 ]
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %30, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %7, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RMI_SPI_XFER_SIZE_LIMIT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @RMI_SPI_XFER_SIZE_LIMIT, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %41 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* @GFP_DMA, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @devm_kcalloc(i32* %45, i32 %46, i32 2, i32 %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %151

56:                                               ; preds = %39
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %60 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %59, i32 0, i32 6
  store i32* %58, i32** %60, align 8
  %61 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %62 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %68 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %67, i32 0, i32 7
  store i32* %66, i32** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %71 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @devm_kfree(i32* %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %56
  %80 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %81 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %90 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %94

91:                                               ; preds = %79
  %92 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %93 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %96 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %105 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %109

106:                                              ; preds = %94
  %107 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %108 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %111 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %110, i32 0, i32 4
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %111, align 8
  %113 = bitcast %struct.spi_transfer* %112 to i8*
  store i8* %113, i8** %10, align 8
  %114 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %117 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %120 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @devm_kcalloc(i32* %115, i32 %122, i32 4, i32 %123)
  %125 = bitcast i8* %124 to %struct.spi_transfer*
  store %struct.spi_transfer* %125, %struct.spi_transfer** %8, align 8
  %126 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %127 = icmp ne %struct.spi_transfer* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %109
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %151

131:                                              ; preds = %109
  %132 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %133 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %134 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %133, i32 0, i32 4
  store %struct.spi_transfer* %132, %struct.spi_transfer** %134, align 8
  %135 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %136 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %137 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %135, i64 %139
  %141 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %142 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %141, i32 0, i32 3
  store %struct.spi_transfer* %140, %struct.spi_transfer** %142, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %131
  %146 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %147 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %146, i32 0, i32 0
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @devm_kfree(i32* %147, i8* %148)
  br label %150

150:                                              ; preds = %145, %131
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %128, %53
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

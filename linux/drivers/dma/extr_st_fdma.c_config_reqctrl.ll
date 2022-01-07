; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_config_reqctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_config_reqctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.st_fdma_dev*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i64 }
%struct.st_fdma_dev = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FDMA_REQ_CTRL_WNR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OPCODE_MASK = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OPCODE_LD_ST1 = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OPCODE_LD_ST2 = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OPCODE_LD_ST4 = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OPCODE_LD_ST8 = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_NUM_OPS_MASK = common dso_local global i32 0, align 4
@FDMA_REQ_CTRL_OFST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"chan:%d config_reqctrl:%#x req_ctrl:%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_fdma_chan*, i32)* @config_reqctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_reqctrl(%struct.st_fdma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_fdma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_fdma_dev*, align 8
  store %struct.st_fdma_chan* %0, %struct.st_fdma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %16, i32 0, i32 2
  %18 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %17, align 8
  store %struct.st_fdma_dev* %18, %struct.st_fdma_dev** %10, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %59 [
    i32 133, label %20
    i32 132, label %40
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @FDMA_REQ_CTRL_WNR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  br label %62

40:                                               ; preds = %2
  %41 = load i32, i32* @FDMA_REQ_CTRL_WNR, align 4
  %42 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %43 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %48 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  %51 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %56 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %143

62:                                               ; preds = %40, %20
  %63 = load i32, i32* @FDMA_REQ_CTRL_OPCODE_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %66 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %99 [
    i32 131, label %71
    i32 130, label %78
    i32 129, label %85
    i32 128, label %92
  ]

71:                                               ; preds = %62
  %72 = load i32, i32* @FDMA_REQ_CTRL_OPCODE_LD_ST1, align 4
  %73 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %74 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %102

78:                                               ; preds = %62
  %79 = load i32, i32* @FDMA_REQ_CTRL_OPCODE_LD_ST2, align 4
  %80 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %81 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %102

85:                                               ; preds = %62
  %86 = load i32, i32* @FDMA_REQ_CTRL_OPCODE_LD_ST4, align 4
  %87 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %88 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %102

92:                                               ; preds = %62
  %93 = load i32, i32* @FDMA_REQ_CTRL_OPCODE_LD_ST8, align 4
  %94 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %95 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %102

99:                                               ; preds = %62
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %143

102:                                              ; preds = %92, %85, %78, %71
  %103 = load i32, i32* @FDMA_REQ_CTRL_NUM_OPS_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %106 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load i64, i64* %6, align 8
  %111 = sub nsw i64 %110, 1
  %112 = call i32 @FDMA_REQ_CTRL_NUM_OPS(i64 %111)
  %113 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %114 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %119 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %120 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FDMA_REQ_CTRL_OFST, align 4
  %124 = call i32 @dreq_write(%struct.st_fdma_chan* %118, i32 %122, i32 %123)
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %127 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i64 %125, i64* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %131 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %10, align 8
  %134 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %4, align 8
  %139 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %136, i64 %137, i32 %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %102, %99, %59
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @FDMA_REQ_CTRL_NUM_OPS(i64) #1

declare dso_local i32 @dreq_write(%struct.st_fdma_chan*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

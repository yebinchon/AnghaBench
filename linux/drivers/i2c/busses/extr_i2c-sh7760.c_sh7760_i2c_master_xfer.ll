; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, i32, %struct.cami2c* }
%struct.cami2c = type { i32, i32, %struct.i2c_msg*, i32 }
%struct.i2c_msg = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"sh7760-i2c%d: bus busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IDF_STOP = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IDS_NACK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@IDS_ARBLOST = common dso_local global i32 0, align 4
@I2CMCR = common dso_local global i32 0, align 4
@I2CMSR = common dso_local global i32 0, align 4
@I2CMIER = common dso_local global i32 0, align 4
@I2CFIER = common dso_local global i32 0, align 4
@I2CSCR = common dso_local global i32 0, align 4
@I2CSAR = common dso_local global i32 0, align 4
@I2CSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sh7760_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cami2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 3
  %13 = load %struct.cami2c*, %struct.cami2c** %12, align 8
  store %struct.cami2c* %13, %struct.cami2c** %8, align 8
  %14 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %15 = call i64 @sh7760_i2c_busy_check(%struct.cami2c* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 2
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %105, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %27
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %100, %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @IDF_STOP, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %46 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %48 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %51 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %50, i32 0, i32 2
  store %struct.i2c_msg* %49, %struct.i2c_msg** %51, align 8
  %52 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %53 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %52, i32 0, i32 3
  %54 = call i32 @init_completion(i32* %53)
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I2C_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %63 = call i32 @sh7760_i2c_mrecv(%struct.cami2c* %62)
  br label %67

64:                                               ; preds = %43
  %65 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %66 = call i32 @sh7760_i2c_msend(%struct.cami2c* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %69 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %68, i32 0, i32 3
  %70 = call i32 @wait_for_completion(i32* %69)
  %71 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %72 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %110

78:                                               ; preds = %67
  %79 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %80 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IDS_NACK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = call i32 @mdelay(i32 1)
  %87 = load i32, i32* @EREMOTEIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %110

89:                                               ; preds = %78
  %90 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %91 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IDS_ARBLOST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %10, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @mdelay(i32 2)
  br label %35

102:                                              ; preds = %96
  %103 = load i32, i32* @EREMOTEIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %110

105:                                              ; preds = %89
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 1
  store %struct.i2c_msg* %107, %struct.i2c_msg** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %27

110:                                              ; preds = %102, %85, %75, %27
  %111 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %112 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %111, i32 0, i32 2
  store %struct.i2c_msg* null, %struct.i2c_msg** %112, align 8
  %113 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %114 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %116 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %118 = load i32, i32* @I2CMCR, align 4
  %119 = call i32 @OUT32(%struct.cami2c* %117, i32 %118, i32 0)
  %120 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %121 = load i32, i32* @I2CMSR, align 4
  %122 = call i32 @OUT32(%struct.cami2c* %120, i32 %121, i32 0)
  %123 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %124 = load i32, i32* @I2CMIER, align 4
  %125 = call i32 @OUT32(%struct.cami2c* %123, i32 %124, i32 0)
  %126 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %127 = load i32, i32* @I2CFIER, align 4
  %128 = call i32 @OUT32(%struct.cami2c* %126, i32 %127, i32 0)
  %129 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %130 = load i32, i32* @I2CSCR, align 4
  %131 = call i32 @OUT32(%struct.cami2c* %129, i32 %130, i32 0)
  %132 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %133 = load i32, i32* @I2CSAR, align 4
  %134 = call i32 @OUT32(%struct.cami2c* %132, i32 %133, i32 0)
  %135 = load %struct.cami2c*, %struct.cami2c** %8, align 8
  %136 = load i32, i32* @I2CSSR, align 4
  %137 = call i32 @OUT32(%struct.cami2c* %135, i32 %136, i32 0)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %110, %17
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @sh7760_i2c_busy_check(%struct.cami2c*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sh7760_i2c_mrecv(%struct.cami2c*) #1

declare dso_local i32 @sh7760_i2c_msend(%struct.cami2c*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @OUT32(%struct.cami2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

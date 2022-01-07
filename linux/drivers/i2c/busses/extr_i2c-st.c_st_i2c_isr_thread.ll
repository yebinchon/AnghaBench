; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, i32, i32, %struct.st_i2c_client }
%struct.st_i2c_client = type { i32, i32, i32, i32 }

@SSC_IEN = common dso_local global i64 0, align 8
@SSC_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"spurious it (sta=0x%04x, ien=0x%04x)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@SSC_CLR_NACK = common dso_local global i32 0, align 4
@SSC_CLR = common dso_local global i64 0, align 8
@SSC_IEN_STOPEN = common dso_local global i32 0, align 4
@SSC_IEN_ARBLEN = common dso_local global i32 0, align 4
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_I2C_STOPG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SSC_CLR_SSCARBL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"it %d unhandled (sta=0x%04x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_i2c_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st_i2c_dev*, align 8
  %7 = alloca %struct.st_i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.st_i2c_dev*
  store %struct.st_i2c_dev* %12, %struct.st_i2c_dev** %6, align 8
  %13 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %14 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %13, i32 0, i32 3
  store %struct.st_i2c_client* %14, %struct.st_i2c_client** %7, align 8
  %15 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %16 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SSC_IEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %22 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSC_STA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @__fls(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %35 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %161

41:                                               ; preds = %2
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 1, %42
  switch i32 %43, label %146 [
    i32 128, label %44
    i32 129, label %58
    i32 130, label %58
    i32 131, label %68
    i32 132, label %117
  ]

44:                                               ; preds = %41
  %45 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %46 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I2C_M_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %53 = call i32 @st_i2c_handle_read(%struct.st_i2c_dev* %52)
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %56 = call i32 @st_i2c_handle_write(%struct.st_i2c_dev* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %153

58:                                               ; preds = %41, %41
  %59 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %60 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SSC_IEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel_relaxed(i32 0, i64 %63)
  %65 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %66 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %65, i32 0, i32 2
  %67 = call i32 @complete(i32* %66)
  br label %153

68:                                               ; preds = %41
  %69 = load i32, i32* @SSC_CLR_NACK, align 4
  %70 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %71 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SSC_CLR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i32 %69, i64 %74)
  %76 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %77 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I2C_M_RD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %68
  %83 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %84 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %89 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %94 = call i32 @st_i2c_handle_read(%struct.st_i2c_dev* %93)
  br label %153

95:                                               ; preds = %87, %82, %68
  %96 = load i32, i32* @SSC_IEN_STOPEN, align 4
  %97 = load i32, i32* @SSC_IEN_ARBLEN, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %101 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SSC_IEN, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel_relaxed(i32 %99, i64 %104)
  %106 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %107 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SSC_I2C, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* @SSC_I2C_STOPG, align 4
  %112 = call i32 @st_i2c_set_bits(i64 %110, i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %116 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %153

117:                                              ; preds = %41
  %118 = load i32, i32* @SSC_CLR_SSCARBL, align 4
  %119 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %120 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SSC_CLR, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel_relaxed(i32 %118, i64 %123)
  %125 = load i32, i32* @SSC_IEN_STOPEN, align 4
  %126 = load i32, i32* @SSC_IEN_ARBLEN, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %130 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SSC_IEN, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel_relaxed(i32 %128, i64 %133)
  %135 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %136 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SSC_I2C, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i32, i32* @SSC_I2C_STOPG, align 4
  %141 = call i32 @st_i2c_set_bits(i64 %139, i32 %140)
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = sub nsw i32 0, %142
  %144 = load %struct.st_i2c_client*, %struct.st_i2c_client** %7, align 8
  %145 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %153

146:                                              ; preds = %41
  %147 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %148 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %117, %95, %92, %58, %57
  %154 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %155 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SSC_IEN, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readl(i64 %158)
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %153, %33
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @st_i2c_handle_read(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_handle_write(%struct.st_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @st_i2c_set_bits(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

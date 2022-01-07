; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_atomic_read_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_atomic_read_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }
%struct.drxj_hi_cmd = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_CMD_ATOMIC_COPY = common dso_local global i32 0, align 4
@DRXJ_HI_ATOMIC_BUF_START = common dso_local global i64 0, align 8
@DRXJ_HI_ATOMIC_WRITE = common dso_local global i32 0, align 4
@DRXJ_HI_ATOMIC_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i64, i32, i64*, i32)* @drxj_dap_atomic_read_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_dap_atomic_read_write_block(%struct.i2c_device_addr* %0, i64 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_device_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drxj_hi_cmd, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i64*, i64** %10, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %21 = icmp ne %struct.i2c_device_addr* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = srem i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp sgt i32 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22, %19, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %171

33:                                               ; preds = %26
  %34 = load i32, i32* @SIO_HI_RA_RAM_CMD_ATOMIC_COPY, align 4
  %35 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* @DRXJ_HI_ATOMIC_BUF_START, align 8
  %37 = call i32 @DRXDAP_FASI_ADDR2BLOCK(i64 %36)
  %38 = shl i32 %37, 6
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @DRXJ_HI_ATOMIC_BUF_START, align 8
  %41 = call i64 @DRXDAP_FASI_ADDR2BANK(i64 %40)
  %42 = add nsw i64 %39, %41
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* @DRXJ_HI_ATOMIC_BUF_START, align 8
  %46 = call i64 @DRXDAP_FASI_ADDR2OFFSET(i64 %45)
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 2
  %51 = sub nsw i32 %50, 1
  %52 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %33
  %56 = load i32, i32* @DRXJ_HI_ATOMIC_WRITE, align 4
  %57 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %65

60:                                               ; preds = %33
  %61 = load i32, i32* @DRXJ_HI_ATOMIC_READ, align 4
  %62 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @DRXDAP_FASI_ADDR2BLOCK(i64 %66)
  %68 = shl i32 %67, 6
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @DRXDAP_FASI_ADDR2BANK(i64 %70)
  %72 = add nsw i64 %69, %71
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @DRXDAP_FASI_ADDR2OFFSET(i64 %75)
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %12, i32 0, i32 4
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %113, %81
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %82
  %88 = load i64*, i64** %10, align 8
  %89 = load i32, i32* %16, align 4
  %90 = mul nsw i32 2, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i64*, i64** %10, align 8
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 %102, 8
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %107 = load i64, i64* @DRXJ_HI_ATOMIC_BUF_START, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %106, i64 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %87
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %82

116:                                              ; preds = %82
  br label %117

117:                                              ; preds = %116, %65
  %118 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %119 = call i32 @hi_command(%struct.i2c_device_addr* %118, %struct.drxj_hi_cmd* %12, i32* %15)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %169

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %168

128:                                              ; preds = %125
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %164, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 2
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %129
  %135 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %136 = load i64, i64* @DRXJ_HI_ATOMIC_BUF_START, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %135, i64 %139, i32* %14, i32 0)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %169

146:                                              ; preds = %134
  %147 = load i32, i32* %14, align 4
  %148 = and i32 %147, 255
  %149 = sext i32 %148 to i64
  %150 = load i64*, i64** %10, align 8
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %149, i64* %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = ashr i32 %155, 8
  %157 = sext i32 %156 to i64
  %158 = load i64*, i64** %10, align 8
  %159 = load i32, i32* %16, align 4
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  store i64 %157, i64* %163, align 8
  br label %164

164:                                              ; preds = %146
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %129

167:                                              ; preds = %129
  br label %168

168:                                              ; preds = %167, %125
  store i32 0, i32* %6, align 4
  br label %171

169:                                              ; preds = %143, %122
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %168, %30
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @DRXDAP_FASI_ADDR2BLOCK(i64) #1

declare dso_local i64 @DRXDAP_FASI_ADDR2BANK(i64) #1

declare dso_local i64 @DRXDAP_FASI_ADDR2OFFSET(i64) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i64, i32, i32) #1

declare dso_local i32 @hi_command(%struct.i2c_device_addr*, %struct.drxj_hi_cmd*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

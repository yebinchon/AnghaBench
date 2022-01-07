; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_scu_atomic_read_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_scu_atomic_read_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }
%struct.drxjscu_cmd = type { i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_STANDARD_TOP = common dso_local global i32 0, align 4
@SCU_RAM_COMMAND_CMD_AUX_SCU_ATOMIC_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32, i32*, i32)* @drxj_dap_scu_atomic_read_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_dap_scu_atomic_read_write_block(%struct.i2c_device_addr* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_device_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drxjscu_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca [18 x i32], align 16
  %15 = alloca [15 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %5
  %21 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %22 = icmp ne %struct.i2c_device_addr* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sgt i32 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23, %20, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %148

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ADDR_AT_SCU_SPACE(i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = and i32 -129, %42
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 0
  store i32 %43, i32* %44, align 16
  %45 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %47, 2
  %49 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %88

50:                                               ; preds = %34
  store i32 0, i32* %16, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 128, %51
  %53 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 0
  store i32 %52, i32* %53, align 16
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %79, %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %56, 2
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %65, %73
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %54

82:                                               ; preds = %54
  %83 = load i32, i32* %9, align 4
  %84 = sdiv i32 %83, 2
  %85 = add nsw i32 %84, 2
  %86 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %41
  %89 = load i32, i32* @SCU_RAM_COMMAND_STANDARD_TOP, align 4
  %90 = load i32, i32* @SCU_RAM_COMMAND_CMD_AUX_SCU_ATOMIC_ACCESS, align 4
  %91 = or i32 %89, %90
  %92 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 0
  %94 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 3
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 0
  %96 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 4
  store i32* %95, i32** %96, align 8
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %98 = call i32 @scu_command(%struct.i2c_device_addr* %97, %struct.drxjscu_cmd* %12)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %146

104:                                              ; preds = %88
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %104
  store i32 0, i32* %17, align 4
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %141, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sdiv i32 %110, 2
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = getelementptr inbounds %struct.drxjscu_cmd, %struct.drxjscu_cmd* %12, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %113
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %108

144:                                              ; preds = %108
  br label %145

145:                                              ; preds = %144, %104
  store i32 0, i32* %6, align 4
  br label %148

146:                                              ; preds = %101
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %145, %31
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i64 @ADDR_AT_SCU_SPACE(i32) #1

declare dso_local i32 @scu_command(%struct.i2c_device_addr*, %struct.drxjscu_cmd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

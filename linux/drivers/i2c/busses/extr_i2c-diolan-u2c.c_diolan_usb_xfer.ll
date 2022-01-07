; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_usb_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_usb_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i64* }
%struct.i2c_diolan_u2c = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @diolan_usb_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diolan_usb_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_diolan_u2c*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = call %struct.i2c_diolan_u2c* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.i2c_diolan_u2c* %17, %struct.i2c_diolan_u2c** %8, align 8
  %18 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %19 = call i32 @diolan_i2c_start(%struct.i2c_diolan_u2c* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %173

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %156, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %159

29:                                               ; preds = %25
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 %32
  store %struct.i2c_msg* %33, %struct.i2c_msg** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %38 = call i32 @diolan_i2c_repeated_start(%struct.i2c_diolan_u2c* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %161

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %46 = call i64 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %45)
  %47 = call i32 @diolan_i2c_put_byte_ack(%struct.i2c_diolan_u2c* %44, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %161

51:                                               ; preds = %43
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %130

58:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %126, %58
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %66, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %75, %65
  %84 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @diolan_i2c_get_byte_ack(%struct.i2c_diolan_u2c* %84, i32 %85, i64* %14)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %161

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load i64, i64* %14, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103, %100
  %108 = load i32, i32* @EPROTO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %161

110:                                              ; preds = %103
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  br label %118

118:                                              ; preds = %110, %93, %90
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %59

129:                                              ; preds = %59
  br label %155

130:                                              ; preds = %51
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %151, %130
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @diolan_i2c_put_byte_ack(%struct.i2c_diolan_u2c* %138, i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %161

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %131

154:                                              ; preds = %131
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %25

159:                                              ; preds = %25
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %159, %149, %107, %89, %50, %41
  %162 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %8, align 8
  %163 = call i32 @diolan_i2c_stop(%struct.i2c_diolan_u2c* %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %169, %166, %161
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %171, %22
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.i2c_diolan_u2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @diolan_i2c_start(%struct.i2c_diolan_u2c*) #1

declare dso_local i32 @diolan_i2c_repeated_start(%struct.i2c_diolan_u2c*) #1

declare dso_local i32 @diolan_i2c_put_byte_ack(%struct.i2c_diolan_u2c*, i64) #1

declare dso_local i64 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @diolan_i2c_get_byte_ack(%struct.i2c_diolan_u2c*, i32, i64*) #1

declare dso_local i32 @diolan_i2c_stop(%struct.i2c_diolan_u2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMB_HOST_ADDRESS = common dso_local global i32 0, align 4
@AMD756_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMB_HOST_DATA = common dso_local global i32 0, align 4
@SMB_HOST_COMMAND = common dso_local global i32 0, align 4
@SMB_HOST_BLOCK_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GE_CYC_TYPE_MASK = common dso_local global i32 0, align 4
@SMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @amd756_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd756_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load i32, i32* %14, align 4
  switch i32 %19, label %155 [
    i32 129, label %20
    i32 131, label %31
    i32 130, label %51
    i32 128, label %76
    i32 132, label %101
  ]

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 127
  %23 = shl i32 %22, 1
  %24 = load i8, i8* %12, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 %25, 1
  %27 = or i32 %23, %26
  %28 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %29 = call i32 @outw_p(i32 %27, i32 %28)
  %30 = load i32, i32* @AMD756_QUICK, align 4
  store i32 %30, i32* %14, align 4
  br label %162

31:                                               ; preds = %7
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 127
  %34 = shl i32 %33, 1
  %35 = load i8, i8* %12, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 1
  %38 = or i32 %34, %37
  %39 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %40 = call i32 @outw_p(i32 %38, i32 %39)
  %41 = load i8, i8* %12, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @SMB_HOST_DATA, align 4
  %49 = call i32 @outb_p(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %31
  store i32 135, i32* %14, align 4
  br label %162

51:                                               ; preds = %7
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 127
  %54 = shl i32 %53, 1
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 1
  %58 = or i32 %54, %57
  %59 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %60 = call i32 @outw_p(i32 %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @SMB_HOST_COMMAND, align 4
  %63 = call i32 @outb_p(i32 %61, i32 %62)
  %64 = load i8, i8* %12, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %51
  %70 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %71 = bitcast %union.i2c_smbus_data* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SMB_HOST_DATA, align 4
  %74 = call i32 @outw_p(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %51
  store i32 134, i32* %14, align 4
  br label %162

76:                                               ; preds = %7
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 127
  %79 = shl i32 %78, 1
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = and i32 %81, 1
  %83 = or i32 %79, %82
  %84 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %85 = call i32 @outw_p(i32 %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @SMB_HOST_COMMAND, align 4
  %88 = call i32 @outb_p(i32 %86, i32 %87)
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %76
  %95 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %96 = bitcast %union.i2c_smbus_data* %95 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SMB_HOST_DATA, align 4
  %99 = call i32 @outw_p(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %76
  store i32 133, i32* %14, align 4
  br label %162

101:                                              ; preds = %7
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 127
  %104 = shl i32 %103, 1
  %105 = load i8, i8* %12, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 1
  %108 = or i32 %104, %107
  %109 = load i32, i32* @SMB_HOST_ADDRESS, align 4
  %110 = call i32 @outw_p(i32 %108, i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @SMB_HOST_COMMAND, align 4
  %113 = call i32 @outb_p(i32 %111, i32 %112)
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %101
  %120 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %121 = bitcast %union.i2c_smbus_data* %120 to i32**
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %127, %119
  %129 = load i32, i32* %17, align 4
  %130 = icmp sgt i32 %129, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 32, i32* %17, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @SMB_HOST_DATA, align 4
  %135 = call i32 @outw_p(i32 %133, i32 %134)
  store i32 1, i32* %16, align 4
  br label %136

136:                                              ; preds = %150, %132
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %142 = bitcast %union.i2c_smbus_data* %141 to i32**
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SMB_HOST_BLOCK_DATA, align 4
  %149 = call i32 @outb_p(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %136

153:                                              ; preds = %136
  br label %154

154:                                              ; preds = %153, %101
  store i32 136, i32* %14, align 4
  br label %162

155:                                              ; preds = %7
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %157 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %156, i32 0, i32 0
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @dev_warn(i32* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EOPNOTSUPP, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %244

162:                                              ; preds = %154, %100, %75, %50, %20
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @GE_CYC_TYPE_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @SMB_GLOBAL_ENABLE, align 4
  %167 = call i32 @outw_p(i32 %165, i32 %166)
  %168 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %169 = call i32 @amd756_transaction(%struct.i2c_adapter* %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %8, align 4
  br label %244

174:                                              ; preds = %162
  %175 = load i8, i8* %12, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @AMD756_QUICK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %174
  store i32 0, i32* %8, align 4
  br label %244

185:                                              ; preds = %180
  %186 = load i32, i32* %14, align 4
  switch i32 %186, label %243 [
    i32 135, label %187
    i32 134, label %192
    i32 133, label %197
    i32 136, label %202
  ]

187:                                              ; preds = %185
  %188 = load i32, i32* @SMB_HOST_DATA, align 4
  %189 = call i32 @inw_p(i32 %188)
  %190 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %191 = bitcast %union.i2c_smbus_data* %190 to i32*
  store i32 %189, i32* %191, align 8
  br label %243

192:                                              ; preds = %185
  %193 = load i32, i32* @SMB_HOST_DATA, align 4
  %194 = call i32 @inw_p(i32 %193)
  %195 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %196 = bitcast %union.i2c_smbus_data* %195 to i32*
  store i32 %194, i32* %196, align 8
  br label %243

197:                                              ; preds = %185
  %198 = load i32, i32* @SMB_HOST_DATA, align 4
  %199 = call i32 @inw_p(i32 %198)
  %200 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %201 = bitcast %union.i2c_smbus_data* %200 to i32*
  store i32 %199, i32* %201, align 8
  br label %243

202:                                              ; preds = %185
  %203 = load i32, i32* @SMB_HOST_DATA, align 4
  %204 = call i32 @inw_p(i32 %203)
  %205 = and i32 %204, 63
  %206 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %207 = bitcast %union.i2c_smbus_data* %206 to i32**
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %205, i32* %209, align 4
  %210 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %211 = bitcast %union.i2c_smbus_data* %210 to i32**
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %214, 32
  br i1 %215, label %216, label %221

216:                                              ; preds = %202
  %217 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %218 = bitcast %union.i2c_smbus_data* %217 to i32**
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 32, i32* %220, align 4
  br label %221

221:                                              ; preds = %216, %202
  store i32 1, i32* %16, align 4
  br label %222

222:                                              ; preds = %239, %221
  %223 = load i32, i32* %16, align 4
  %224 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %225 = bitcast %union.i2c_smbus_data* %224 to i32**
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp sle i32 %223, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %222
  %231 = load i32, i32* @SMB_HOST_BLOCK_DATA, align 4
  %232 = call i32 @inb_p(i32 %231)
  %233 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %234 = bitcast %union.i2c_smbus_data* %233 to i32**
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %232, i32* %238, align 4
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %222

242:                                              ; preds = %222
  br label %243

243:                                              ; preds = %185, %242, %197, %192, %187
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %243, %184, %172, %155
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local i32 @outw_p(i32, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @amd756_transaction(%struct.i2c_adapter*) #1

declare dso_local i32 @inw_p(i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

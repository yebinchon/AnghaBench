; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.i2c_piix4_adapdata = type { i16 }

@SMBHSTADD = common dso_local global i32 0, align 4
@PIIX4_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENABLE_INT9 = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @piix4_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.i2c_piix4_adapdata*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.i2c_piix4_adapdata* %22, %struct.i2c_piix4_adapdata** %16, align 8
  %23 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %16, align 8
  %24 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %17, align 2
  %26 = load i32, i32* %14, align 4
  switch i32 %26, label %164 [
    i32 133, label %27
    i32 135, label %36
    i32 134, label %54
    i32 132, label %77
    i32 136, label %108
  ]

27:                                               ; preds = %7
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 1
  %30 = load i8, i8* %12, align 1
  %31 = sext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = load i32, i32* @SMBHSTADD, align 4
  %34 = call i32 @outb_p(i32 %32, i32 %33)
  %35 = load i32, i32* @PIIX4_QUICK, align 4
  store i32 %35, i32* %14, align 4
  br label %171

36:                                               ; preds = %7
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %37, 1
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i32, i32* @SMBHSTADD, align 4
  %43 = call i32 @outb_p(i32 %41, i32 %42)
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SMBHSTCMD, align 4
  %52 = call i32 @outb_p(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %36
  store i32 130, i32* %14, align 4
  br label %171

54:                                               ; preds = %7
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 1
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = load i32, i32* @SMBHSTADD, align 4
  %61 = call i32 @outb_p(i32 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @SMBHSTCMD, align 4
  %64 = call i32 @outb_p(i32 %62, i32 %63)
  %65 = load i8, i8* %12, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %54
  %71 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %72 = bitcast %union.i2c_smbus_data* %71 to i32*
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SMBHSTDAT0, align 4
  %75 = call i32 @outb_p(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %54
  store i32 129, i32* %14, align 4
  br label %171

77:                                               ; preds = %7
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 1
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = load i32, i32* @SMBHSTADD, align 4
  %84 = call i32 @outb_p(i32 %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @SMBHSTCMD, align 4
  %87 = call i32 @outb_p(i32 %85, i32 %86)
  %88 = load i8, i8* %12, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %77
  %94 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %95 = bitcast %union.i2c_smbus_data* %94 to i32*
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 255
  %98 = load i32, i32* @SMBHSTDAT0, align 4
  %99 = call i32 @outb_p(i32 %97, i32 %98)
  %100 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %101 = bitcast %union.i2c_smbus_data* %100 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 65280
  %104 = ashr i32 %103, 8
  %105 = load i32, i32* @SMBHSTDAT1, align 4
  %106 = call i32 @outb_p(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %93, %77
  store i32 128, i32* %14, align 4
  br label %171

108:                                              ; preds = %7
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 1
  %111 = load i8, i8* %12, align 1
  %112 = sext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = load i32, i32* @SMBHSTADD, align 4
  %115 = call i32 @outb_p(i32 %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @SMBHSTCMD, align 4
  %118 = call i32 @outb_p(i32 %116, i32 %117)
  %119 = load i8, i8* %12, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %108
  %125 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %126 = bitcast %union.i2c_smbus_data* %125 to i32**
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132, %124
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %261

139:                                              ; preds = %132
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* @SMBHSTDAT0, align 4
  %142 = call i32 @outb_p(i32 %140, i32 %141)
  %143 = load i32, i32* @SMBHSTCNT, align 4
  %144 = call i32 @inb_p(i32 %143)
  store i32 1, i32* %18, align 4
  br label %145

145:                                              ; preds = %159, %139
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %151 = bitcast %union.i2c_smbus_data* %150 to i32**
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SMBBLKDAT, align 4
  %158 = call i32 @outb_p(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %18, align 4
  br label %145

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %108
  store i32 131, i32* %14, align 4
  br label %171

164:                                              ; preds = %7
  %165 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %166 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %165, i32 0, i32 0
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @dev_warn(i32* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EOPNOTSUPP, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %261

171:                                              ; preds = %163, %107, %76, %53, %27
  %172 = load i32, i32* %14, align 4
  %173 = and i32 %172, 28
  %174 = load i32, i32* @ENABLE_INT9, align 4
  %175 = and i32 %174, 1
  %176 = add nsw i32 %173, %175
  %177 = load i32, i32* @SMBHSTCNT, align 4
  %178 = call i32 @outb_p(i32 %176, i32 %177)
  %179 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %180 = call i32 @piix4_transaction(%struct.i2c_adapter* %179)
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %20, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* %20, align 4
  store i32 %184, i32* %8, align 4
  br label %261

185:                                              ; preds = %171
  %186 = load i8, i8* %12, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @PIIX4_QUICK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %185
  store i32 0, i32* %8, align 4
  br label %261

196:                                              ; preds = %191
  %197 = load i32, i32* %14, align 4
  switch i32 %197, label %260 [
    i32 130, label %198
    i32 129, label %198
    i32 128, label %203
    i32 131, label %212
  ]

198:                                              ; preds = %196, %196
  %199 = load i32, i32* @SMBHSTDAT0, align 4
  %200 = call i32 @inb_p(i32 %199)
  %201 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %202 = bitcast %union.i2c_smbus_data* %201 to i32*
  store i32 %200, i32* %202, align 8
  br label %260

203:                                              ; preds = %196
  %204 = load i32, i32* @SMBHSTDAT0, align 4
  %205 = call i32 @inb_p(i32 %204)
  %206 = load i32, i32* @SMBHSTDAT1, align 4
  %207 = call i32 @inb_p(i32 %206)
  %208 = shl i32 %207, 8
  %209 = add nsw i32 %205, %208
  %210 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %211 = bitcast %union.i2c_smbus_data* %210 to i32*
  store i32 %209, i32* %211, align 8
  br label %260

212:                                              ; preds = %196
  %213 = load i32, i32* @SMBHSTDAT0, align 4
  %214 = call i32 @inb_p(i32 %213)
  %215 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %216 = bitcast %union.i2c_smbus_data* %215 to i32**
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %214, i32* %218, align 4
  %219 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %220 = bitcast %union.i2c_smbus_data* %219 to i32**
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %212
  %226 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %227 = bitcast %union.i2c_smbus_data* %226 to i32**
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %225, %212
  %234 = load i32, i32* @EPROTO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %8, align 4
  br label %261

236:                                              ; preds = %225
  %237 = load i32, i32* @SMBHSTCNT, align 4
  %238 = call i32 @inb_p(i32 %237)
  store i32 1, i32* %18, align 4
  br label %239

239:                                              ; preds = %256, %236
  %240 = load i32, i32* %18, align 4
  %241 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %242 = bitcast %union.i2c_smbus_data* %241 to i32**
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp sle i32 %240, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %239
  %248 = load i32, i32* @SMBBLKDAT, align 4
  %249 = call i32 @inb_p(i32 %248)
  %250 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %251 = bitcast %union.i2c_smbus_data* %250 to i32**
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %18, align 4
  br label %239

259:                                              ; preds = %239
  br label %260

260:                                              ; preds = %196, %259, %203, %198
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %260, %233, %195, %183, %164, %136
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @piix4_transaction(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

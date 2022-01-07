; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_mci_bind_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_mci_bind_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { %struct.TYPE_2__, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }
%struct.TYPE_2__ = type { %struct.pci_dev**, %struct.pci_dev**, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.sbridge_dev = type { i32, %struct.pci_dev** }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Memory controller in unexpected place! (dev %d, fn %d)\0A\00", align 1
@KNL_MAX_CHAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Caching and Home Agent in unexpected place! (dev %d, fn %d)\0A\00", align 1
@KNL_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"DRAM Channel Registers in unexpected place! (dev %d, fn %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unexpected device %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Missing channel %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Missing CHA %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Some needed devices are missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.sbridge_dev*)* @knl_mci_bind_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knl_mci_bind_devs(%struct.mem_ctl_info* %0, %struct.sbridge_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.sbridge_dev*, align 8
  %6 = alloca %struct.sbridge_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.sbridge_dev* %1, %struct.sbridge_dev** %5, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %13, align 8
  store %struct.sbridge_pvt* %14, %struct.sbridge_pvt** %6, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %175, %2
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %18 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %178

21:                                               ; preds = %15
  %22 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %23 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %22, i32 0, i32 1
  %24 = load %struct.pci_dev**, %struct.pci_dev*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %24, i64 %26
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  store %struct.pci_dev* %28, %struct.pci_dev** %7, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %175

32:                                               ; preds = %21
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 3
  %37 = and i32 %36, 31
  store i32 %37, i32* %8, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  store i32 %41, i32* %9, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %168 [
    i32 132, label %45
    i32 131, label %68
    i32 130, label %72
    i32 134, label %76
    i32 133, label %113
    i32 128, label %159
    i32 129, label %164
  ]

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %51 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store %struct.pci_dev* %49, %struct.pci_dev** %52, align 8
  br label %67

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %59 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store %struct.pci_dev* %57, %struct.pci_dev** %60, align 8
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %175

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %48
  br label %174

68:                                               ; preds = %32
  %69 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %70 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %71 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %70, i32 0, i32 3
  store %struct.pci_dev* %69, %struct.pci_dev** %71, align 8
  br label %174

72:                                               ; preds = %32
  %73 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %74 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %75 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %74, i32 0, i32 2
  store %struct.pci_dev* %73, %struct.pci_dev** %75, align 8
  br label %174

76:                                               ; preds = %32
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 14
  %79 = mul nsw i32 %78, 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @KNL_MAX_CHAS, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %76
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %175

93:                                               ; preds = %84
  %94 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %95 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.pci_dev**, %struct.pci_dev*** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %97, i64 %99
  %101 = load %struct.pci_dev*, %struct.pci_dev** %100, align 8
  %102 = icmp ne %struct.pci_dev* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @WARN_ON(i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %106 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %107 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.pci_dev**, %struct.pci_dev*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %109, i64 %111
  store %struct.pci_dev* %105, %struct.pci_dev** %112, align 8
  br label %174

113:                                              ; preds = %32
  store i32 -1, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 9
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %11, align 4
  br label %127

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 2
  %125 = add nsw i32 3, %124
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130, %127
  %135 = load i32, i32* @KERN_ERR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %137)
  br label %175

139:                                              ; preds = %130
  %140 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %141 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load %struct.pci_dev**, %struct.pci_dev*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %143, i64 %145
  %147 = load %struct.pci_dev*, %struct.pci_dev** %146, align 8
  %148 = icmp ne %struct.pci_dev* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 @WARN_ON(i32 %149)
  %151 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %152 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %153 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load %struct.pci_dev**, %struct.pci_dev*** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %155, i64 %157
  store %struct.pci_dev* %151, %struct.pci_dev** %158, align 8
  br label %174

159:                                              ; preds = %32
  %160 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %161 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %162 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 4
  store %struct.pci_dev* %160, %struct.pci_dev** %163, align 8
  br label %174

164:                                              ; preds = %32
  %165 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %166 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %167 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %166, i32 0, i32 1
  store %struct.pci_dev* %165, %struct.pci_dev** %167, align 8
  br label %174

168:                                              ; preds = %32
  %169 = load i32, i32* @KERN_ERR, align 4
  %170 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %164, %159, %139, %93, %72, %68, %67
  br label %175

175:                                              ; preds = %174, %134, %88, %61, %31
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %15

178:                                              ; preds = %15
  %179 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %180 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  %182 = load %struct.pci_dev*, %struct.pci_dev** %181, align 8
  %183 = icmp ne %struct.pci_dev* %182, null
  br i1 %183, label %184, label %205

184:                                              ; preds = %178
  %185 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %186 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load %struct.pci_dev*, %struct.pci_dev** %187, align 8
  %189 = icmp ne %struct.pci_dev* %188, null
  br i1 %189, label %190, label %205

190:                                              ; preds = %184
  %191 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %192 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %191, i32 0, i32 3
  %193 = load %struct.pci_dev*, %struct.pci_dev** %192, align 8
  %194 = icmp ne %struct.pci_dev* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %197 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %196, i32 0, i32 2
  %198 = load %struct.pci_dev*, %struct.pci_dev** %197, align 8
  %199 = icmp ne %struct.pci_dev* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %202 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %201, i32 0, i32 1
  %203 = load %struct.pci_dev*, %struct.pci_dev** %202, align 8
  %204 = icmp ne %struct.pci_dev* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %200, %195, %190, %184, %178
  br label %253

206:                                              ; preds = %200
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %226, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %207
  %212 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %213 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  %215 = load %struct.pci_dev**, %struct.pci_dev*** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %215, i64 %217
  %219 = load %struct.pci_dev*, %struct.pci_dev** %218, align 8
  %220 = icmp ne %struct.pci_dev* %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %211
  %222 = load i32, i32* @KERN_ERR, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  br label %253

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %207

229:                                              ; preds = %207
  store i32 0, i32* %10, align 4
  br label %230

230:                                              ; preds = %249, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @KNL_MAX_CHAS, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %230
  %235 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %236 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load %struct.pci_dev**, %struct.pci_dev*** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %238, i64 %240
  %242 = load %struct.pci_dev*, %struct.pci_dev** %241, align 8
  %243 = icmp ne %struct.pci_dev* %242, null
  br i1 %243, label %248, label %244

244:                                              ; preds = %234
  %245 = load i32, i32* @KERN_ERR, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %246)
  br label %253

248:                                              ; preds = %234
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %230

252:                                              ; preds = %230
  store i32 0, i32* %3, align 4
  br label %258

253:                                              ; preds = %244, %221, %205
  %254 = load i32, i32* @KERN_ERR, align 4
  %255 = call i32 (i32, i8*, ...) @sbridge_printk(i32 %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %256 = load i32, i32* @ENODEV, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %253, %252
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @sbridge_printk(i32, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

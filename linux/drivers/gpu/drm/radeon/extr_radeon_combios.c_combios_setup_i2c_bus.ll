; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_device = type { i32 }

@RADEON_GPIOPAD_MASK = common dso_local global i32 0, align 4
@RADEON_MDGPIO_MASK = common dso_local global i32 0, align 4
@RADEON_GPIOPAD_A = common dso_local global i8* null, align 8
@RADEON_GPIOPAD_EN = common dso_local global i8* null, align 8
@RADEON_GPIOPAD_Y = common dso_local global i8* null, align 8
@RADEON_MDGPIO_A = common dso_local global i8* null, align 8
@RADEON_MDGPIO_EN = common dso_local global i8* null, align 8
@RADEON_MDGPIO_Y = common dso_local global i8* null, align 8
@RADEON_GPIO_MASK_1 = common dso_local global i32 0, align 4
@RADEON_GPIO_MASK_0 = common dso_local global i32 0, align 4
@RADEON_GPIO_A_1 = common dso_local global i32 0, align 4
@RADEON_GPIO_A_0 = common dso_local global i32 0, align 4
@RADEON_GPIO_EN_1 = common dso_local global i32 0, align 4
@RADEON_GPIO_EN_0 = common dso_local global i32 0, align 4
@RADEON_GPIO_Y_1 = common dso_local global i32 0, align 4
@RADEON_GPIO_Y_0 = common dso_local global i32 0, align 4
@RADEON_HPD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_i2c_bus_rec*, %struct.radeon_device*, i32, i8*, i8*)* @combios_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combios_setup_i2c_bus(%struct.radeon_i2c_bus_rec* noalias sret %0, %struct.radeon_device* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %1, %struct.radeon_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* %4, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %13 [
    i32 133, label %12
    i32 137, label %14
    i32 132, label %15
    i32 135, label %16
    i32 136, label %18
    i32 134, label %20
    i32 138, label %51
  ]

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %5, %12
  store i32 0, i32* %10, align 4
  br label %93

14:                                               ; preds = %5
  store i32 130, i32* %10, align 4
  br label %93

15:                                               ; preds = %5
  store i32 128, i32* %10, align 4
  br label %93

16:                                               ; preds = %5
  %17 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  store i32 %17, i32* %10, align 4
  br label %93

18:                                               ; preds = %5
  %19 = load i32, i32* @RADEON_MDGPIO_MASK, align 4
  store i32 %19, i32* %10, align 4
  br label %93

20:                                               ; preds = %5
  %21 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 147
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 146
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 145
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25, %20
  %36 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  store i32 %36, i32* %10, align 4
  br label %50

37:                                               ; preds = %30
  %38 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 151
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 150
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  store i32 130, i32* %10, align 4
  store i32 137, i32* %7, align 4
  br label %49

48:                                               ; preds = %42
  store i32 129, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %35
  br label %93

51:                                               ; preds = %5
  %52 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 152
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 151
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 150
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56, %51
  store i32 130, i32* %10, align 4
  store i32 137, i32* %7, align 4
  br label %92

67:                                               ; preds = %61
  %68 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 147
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 146
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 145
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72, %67
  store i32 129, i32* %10, align 4
  br label %91

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 140
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 129, i32* %10, align 4
  store i32 134, i32* %7, align 4
  br label %90

89:                                               ; preds = %83
  store i32 131, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %50, %18, %16, %15, %14, %13
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %99 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %101 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load i8*, i8** @RADEON_GPIOPAD_A, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** @RADEON_GPIOPAD_A, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load i8*, i8** @RADEON_GPIOPAD_EN, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 4
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** @RADEON_GPIOPAD_EN, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 5
  store i32 %112, i32* %113, align 4
  %114 = load i8*, i8** @RADEON_GPIOPAD_Y, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 6
  store i32 %115, i32* %116, align 4
  %117 = load i8*, i8** @RADEON_GPIOPAD_Y, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 7
  store i32 %118, i32* %119, align 4
  br label %165

120:                                              ; preds = %93
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @RADEON_MDGPIO_MASK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  %125 = load i32, i32* @RADEON_MDGPIO_MASK, align 4
  %126 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @RADEON_MDGPIO_MASK, align 4
  %128 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load i8*, i8** @RADEON_MDGPIO_A, align 8
  %130 = ptrtoint i8* %129 to i32
  %131 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load i8*, i8** @RADEON_MDGPIO_A, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 3
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** @RADEON_MDGPIO_EN, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 4
  store i32 %136, i32* %137, align 4
  %138 = load i8*, i8** @RADEON_MDGPIO_EN, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 5
  store i32 %139, i32* %140, align 4
  %141 = load i8*, i8** @RADEON_MDGPIO_Y, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 6
  store i32 %142, i32* %143, align 4
  %144 = load i8*, i8** @RADEON_MDGPIO_Y, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 7
  store i32 %145, i32* %146, align 4
  br label %164

147:                                              ; preds = %120
  %148 = load i32, i32* %10, align 4
  %149 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %10, align 4
  %151 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 1
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 2
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %10, align 4
  %155 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 3
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 4
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %10, align 4
  %159 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 5
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %10, align 4
  %161 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 6
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* %10, align 4
  %163 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 7
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %147, %124
  br label %165

165:                                              ; preds = %164, %97
  %166 = load i8*, i8** %8, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %196

168:                                              ; preds = %165
  %169 = load i8*, i8** %9, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %196

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 8
  store i32 %173, i32* %174, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 9
  store i32 %176, i32* %177, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 10
  store i32 %179, i32* %180, align 4
  %181 = load i8*, i8** %9, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 11
  store i32 %182, i32* %183, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = ptrtoint i8* %184 to i32
  %186 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 12
  store i32 %185, i32* %186, align 4
  %187 = load i8*, i8** %9, align 8
  %188 = ptrtoint i8* %187 to i32
  %189 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 13
  store i32 %188, i32* %189, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 14
  store i32 %191, i32* %192, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 15
  store i32 %194, i32* %195, align 4
  br label %231

196:                                              ; preds = %168, %165
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @RADEON_MDGPIO_MASK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %200, %196
  %205 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 8
  store i32 8192, i32* %205, align 4
  %206 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 9
  store i32 128, i32* %206, align 4
  %207 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 10
  store i32 8192, i32* %207, align 4
  %208 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 11
  store i32 128, i32* %208, align 4
  %209 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 12
  store i32 8192, i32* %209, align 4
  %210 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 13
  store i32 128, i32* %210, align 4
  %211 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 14
  store i32 8192, i32* %211, align 4
  %212 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 15
  store i32 128, i32* %212, align 4
  br label %230

213:                                              ; preds = %200
  %214 = load i32, i32* @RADEON_GPIO_MASK_1, align 4
  %215 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 8
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* @RADEON_GPIO_MASK_0, align 4
  %217 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 9
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* @RADEON_GPIO_A_1, align 4
  %219 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 10
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* @RADEON_GPIO_A_0, align 4
  %221 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 11
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @RADEON_GPIO_EN_1, align 4
  %223 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 12
  store i32 %222, i32* %223, align 4
  %224 = load i32, i32* @RADEON_GPIO_EN_0, align 4
  %225 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 13
  store i32 %224, i32* %225, align 4
  %226 = load i32, i32* @RADEON_GPIO_Y_1, align 4
  %227 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 14
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* @RADEON_GPIO_Y_0, align 4
  %229 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 15
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %213, %204
  br label %231

231:                                              ; preds = %230, %171
  %232 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %272 [
    i32 153, label %235
    i32 144, label %235
    i32 149, label %235
    i32 143, label %235
    i32 148, label %235
    i32 147, label %235
    i32 152, label %242
    i32 142, label %249
    i32 141, label %249
    i32 151, label %256
    i32 150, label %256
    i32 140, label %263
    i32 139, label %263
    i32 146, label %263
    i32 145, label %263
  ]

235:                                              ; preds = %231, %231, %231, %231, %231, %231
  %236 = load i32, i32* %10, align 4
  switch i32 %236, label %239 [
    i32 130, label %237
  ]

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %238, align 4
  br label %241

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %240, align 4
  br label %241

241:                                              ; preds = %239, %237
  br label %274

242:                                              ; preds = %231
  %243 = load i32, i32* %10, align 4
  switch i32 %243, label %246 [
    i32 130, label %244
    i32 129, label %244
  ]

244:                                              ; preds = %242, %242
  %245 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %245, align 4
  br label %248

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %247, align 4
  br label %248

248:                                              ; preds = %246, %244
  br label %274

249:                                              ; preds = %231, %231
  %250 = load i32, i32* %10, align 4
  switch i32 %250, label %253 [
    i32 128, label %251
    i32 130, label %251
    i32 131, label %251
  ]

251:                                              ; preds = %249, %249, %249
  %252 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %252, align 4
  br label %255

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %253, %251
  br label %274

256:                                              ; preds = %231, %231
  %257 = load i32, i32* %10, align 4
  switch i32 %257, label %260 [
    i32 128, label %258
    i32 130, label %258
  ]

258:                                              ; preds = %256, %256
  %259 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %259, align 4
  br label %262

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %261, align 4
  br label %262

262:                                              ; preds = %260, %258
  br label %274

263:                                              ; preds = %231, %231, %231, %231
  %264 = load i32, i32* %10, align 4
  switch i32 %264, label %269 [
    i32 128, label %265
    i32 130, label %265
    i32 129, label %267
  ]

265:                                              ; preds = %263, %263
  %266 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 1, i32* %266, align 4
  br label %271

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %268, align 4
  br label %271

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %270, align 4
  br label %271

271:                                              ; preds = %269, %267, %265
  br label %274

272:                                              ; preds = %231
  %273 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 16
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %272, %271, %262, %255, %248, %241
  %275 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 17
  store i32 0, i32* %275, align 4
  %276 = load i32, i32* %7, align 4
  %277 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 18
  store i32 %276, i32* %277, align 4
  %278 = load i32, i32* @RADEON_HPD_NONE, align 4
  %279 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 20
  store i32 %278, i32* %279, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 19
  store i32 1, i32* %283, align 4
  br label %286

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %0, i32 0, i32 19
  store i32 0, i32* %285, align 4
  br label %286

286:                                              ; preds = %284, %282
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

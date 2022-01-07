; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_do_cpt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_do_cpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.microcode = type { i64, i64, i8*, i32, i64 }

@CPT_FLAG_DEVICE_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Requested for more cores than available AE cores\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPT_MAX_CORE_GROUPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Can't load, all eight microcode groups in use\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@AE_TYPES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Microcode load Failed for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Requested for more cores than available SE cores\0A\00", align 1
@SE_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*, %struct.microcode*)* @do_cpt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpt_init(%struct.cpt_device* %0, %struct.microcode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca %struct.microcode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store %struct.microcode* %1, %struct.microcode** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %9 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load i32, i32* @CPT_FLAG_DEVICE_READY, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %15 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %19 = call i32 @cpt_disable_all_interrupts(%struct.cpt_device* %18)
  %20 = load %struct.microcode*, %struct.microcode** %5, align 8
  %21 = getelementptr inbounds %struct.microcode, %struct.microcode* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %2
  %25 = load %struct.microcode*, %struct.microcode** %5, align 8
  %26 = getelementptr inbounds %struct.microcode, %struct.microcode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %29 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %185

37:                                               ; preds = %24
  %38 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %39 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CPT_MAX_CORE_GROUPS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENFILE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %189

48:                                               ; preds = %37
  %49 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %50 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.microcode*, %struct.microcode** %5, align 8
  %53 = getelementptr inbounds %struct.microcode, %struct.microcode* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.microcode*, %struct.microcode** %5, align 8
  %55 = getelementptr inbounds %struct.microcode, %struct.microcode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @GENMASK(i64 %56, i32 0)
  %58 = load %struct.microcode*, %struct.microcode** %5, align 8
  %59 = getelementptr inbounds %struct.microcode, %struct.microcode* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %61 = load %struct.microcode*, %struct.microcode** %5, align 8
  %62 = getelementptr inbounds %struct.microcode, %struct.microcode* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @AE_TYPES, align 4
  %65 = load %struct.microcode*, %struct.microcode** %5, align 8
  %66 = getelementptr inbounds %struct.microcode, %struct.microcode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @cpt_disable_cores(%struct.cpt_device* %60, i8* %63, i32 %64, i64 %67)
  %69 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %70 = load %struct.microcode*, %struct.microcode** %5, align 8
  %71 = call i32 @cpt_load_microcode(%struct.cpt_device* %69, %struct.microcode* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %48
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = load %struct.microcode*, %struct.microcode** %5, align 8
  %77 = getelementptr inbounds %struct.microcode, %struct.microcode* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %185

80:                                               ; preds = %48
  %81 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %82 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %86 = load %struct.microcode*, %struct.microcode** %5, align 8
  %87 = getelementptr inbounds %struct.microcode, %struct.microcode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.microcode*, %struct.microcode** %5, align 8
  %90 = getelementptr inbounds %struct.microcode, %struct.microcode* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @AE_TYPES, align 4
  %93 = call i32 @cpt_configure_group(%struct.cpt_device* %85, i64 %88, i8* %91, i32 %92)
  %94 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %95 = load %struct.microcode*, %struct.microcode** %5, align 8
  %96 = getelementptr inbounds %struct.microcode, %struct.microcode* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @AE_TYPES, align 4
  %99 = call i32 @cpt_enable_cores(%struct.cpt_device* %94, i8* %97, i32 %98)
  br label %176

100:                                              ; preds = %2
  %101 = load %struct.microcode*, %struct.microcode** %5, align 8
  %102 = getelementptr inbounds %struct.microcode, %struct.microcode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %105 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %185

113:                                              ; preds = %100
  %114 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %115 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CPT_MAX_CORE_GROUPS, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @ENFILE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %189

124:                                              ; preds = %113
  %125 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %126 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.microcode*, %struct.microcode** %5, align 8
  %129 = getelementptr inbounds %struct.microcode, %struct.microcode* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.microcode*, %struct.microcode** %5, align 8
  %131 = getelementptr inbounds %struct.microcode, %struct.microcode* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @GENMASK(i64 %132, i32 0)
  %134 = load %struct.microcode*, %struct.microcode** %5, align 8
  %135 = getelementptr inbounds %struct.microcode, %struct.microcode* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %137 = load %struct.microcode*, %struct.microcode** %5, align 8
  %138 = getelementptr inbounds %struct.microcode, %struct.microcode* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @SE_TYPES, align 4
  %141 = load %struct.microcode*, %struct.microcode** %5, align 8
  %142 = getelementptr inbounds %struct.microcode, %struct.microcode* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @cpt_disable_cores(%struct.cpt_device* %136, i8* %139, i32 %140, i64 %143)
  %145 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %146 = load %struct.microcode*, %struct.microcode** %5, align 8
  %147 = call i32 @cpt_load_microcode(%struct.cpt_device* %145, %struct.microcode* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %124
  %151 = load %struct.device*, %struct.device** %7, align 8
  %152 = load %struct.microcode*, %struct.microcode** %5, align 8
  %153 = getelementptr inbounds %struct.microcode, %struct.microcode* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %185

156:                                              ; preds = %124
  %157 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %158 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %162 = load %struct.microcode*, %struct.microcode** %5, align 8
  %163 = getelementptr inbounds %struct.microcode, %struct.microcode* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.microcode*, %struct.microcode** %5, align 8
  %166 = getelementptr inbounds %struct.microcode, %struct.microcode* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @SE_TYPES, align 4
  %169 = call i32 @cpt_configure_group(%struct.cpt_device* %161, i64 %164, i8* %167, i32 %168)
  %170 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %171 = load %struct.microcode*, %struct.microcode** %5, align 8
  %172 = getelementptr inbounds %struct.microcode, %struct.microcode* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @SE_TYPES, align 4
  %175 = call i32 @cpt_enable_cores(%struct.cpt_device* %170, i8* %173, i32 %174)
  br label %176

176:                                              ; preds = %156, %80
  %177 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %178 = call i32 @cpt_enable_mbox_interrupts(%struct.cpt_device* %177)
  %179 = load i32, i32* @CPT_FLAG_DEVICE_READY, align 4
  %180 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %181 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %189

185:                                              ; preds = %150, %108, %74, %32
  %186 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %187 = call i32 @cpt_enable_mbox_interrupts(%struct.cpt_device* %186)
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %176, %119, %43
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @cpt_disable_all_interrupts(%struct.cpt_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @GENMASK(i64, i32) #1

declare dso_local i32 @cpt_disable_cores(%struct.cpt_device*, i8*, i32, i64) #1

declare dso_local i32 @cpt_load_microcode(%struct.cpt_device*, %struct.microcode*) #1

declare dso_local i32 @cpt_configure_group(%struct.cpt_device*, i64, i8*, i32) #1

declare dso_local i32 @cpt_enable_cores(%struct.cpt_device*, i8*, i32) #1

declare dso_local i32 @cpt_enable_mbox_interrupts(%struct.cpt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

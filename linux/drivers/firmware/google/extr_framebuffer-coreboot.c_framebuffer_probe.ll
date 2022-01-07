; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_framebuffer-coreboot.c_framebuffer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_framebuffer-coreboot.c_framebuffer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.coreboot_device = type { i32, %struct.lb_framebuffer }
%struct.lb_framebuffer = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32, i8*, i64, i64 }
%struct.simplefb_platform_data = type { i32, i32, i32*, i32 }

@formats = common dso_local global %struct.TYPE_11__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Coreboot Framebuffer\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"simple-framebuffer\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"coreboot: could not register framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreboot_device*)* @framebuffer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @framebuffer_probe(%struct.coreboot_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreboot_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.lb_framebuffer*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.resource, align 8
  %9 = alloca %struct.simplefb_platform_data, align 8
  store %struct.coreboot_device* %0, %struct.coreboot_device** %3, align 8
  %10 = load %struct.coreboot_device*, %struct.coreboot_device** %3, align 8
  %11 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %10, i32 0, i32 1
  store %struct.lb_framebuffer* %11, %struct.lb_framebuffer** %6, align 8
  %12 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 0
  %13 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %14 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 1
  %17 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %18 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 3
  %22 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %23 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %146, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %149

30:                                               ; preds = %25
  %31 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %32 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %145

41:                                               ; preds = %30
  %42 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %43 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %44, %51
  br i1 %52, label %53, label %145

53:                                               ; preds = %41
  %54 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %55 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %56, %63
  br i1 %64, label %65, label %145

65:                                               ; preds = %53
  %66 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %67 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %68, %75
  br i1 %76, label %77, label %145

77:                                               ; preds = %65
  %78 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %79 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %80, %87
  br i1 %88, label %89, label %145

89:                                               ; preds = %77
  %90 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %91 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %92, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %89
  %102 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %103 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %104, %111
  br i1 %112, label %113, label %145

113:                                              ; preds = %101
  %114 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %115 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %116, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %113
  %126 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %127 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %126, i32 0, i32 10
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %128, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @formats, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 2
  store i32* %143, i32** %144, align 8
  br label %145

145:                                              ; preds = %137, %125, %113, %101, %89, %77, %65, %53, %41, %30
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %25

149:                                              ; preds = %25
  %150 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %9, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %206

156:                                              ; preds = %149
  %157 = call i32 @memset(%struct.resource* %8, i32 0, i32 32)
  %158 = load i32, i32* @IORESOURCE_MEM, align 4
  %159 = load i32, i32* @IORESOURCE_BUSY, align 4
  %160 = or i32 %158, %159
  %161 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  store i32 %160, i32* %161, align 8
  %162 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %162, align 8
  %163 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %164 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %163, i32 0, i32 11
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 2
  store i64 %165, i64* %166, align 8
  %167 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %168 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.lb_framebuffer*, %struct.lb_framebuffer** %6, align 8
  %171 = getelementptr inbounds %struct.lb_framebuffer, %struct.lb_framebuffer* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = call i64 @PAGE_ALIGN(i32 %173)
  store i64 %174, i64* %5, align 8
  %175 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %5, align 8
  %178 = add nsw i64 %176, %177
  %179 = sub nsw i64 %178, 1
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 3
  store i64 %179, i64* %180, align 8
  %181 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp sle i64 %182, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %156
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %206

189:                                              ; preds = %156
  %190 = load %struct.coreboot_device*, %struct.coreboot_device** %3, align 8
  %191 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %190, i32 0, i32 0
  %192 = call %struct.platform_device* @platform_device_register_resndata(i32* %191, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.resource* %8, i32 1, %struct.simplefb_platform_data* %9, i32 24)
  store %struct.platform_device* %192, %struct.platform_device** %7, align 8
  %193 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %194 = call i64 @IS_ERR(%struct.platform_device* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %203

198:                                              ; preds = %189
  %199 = load %struct.coreboot_device*, %struct.coreboot_device** %3, align 8
  %200 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %199, i32 0, i32 0
  %201 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %202 = call i32 @dev_set_drvdata(i32* %200, %struct.platform_device* %201)
  br label %203

203:                                              ; preds = %198, %196
  %204 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %205 = call i32 @PTR_ERR_OR_ZERO(%struct.platform_device* %204)
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %203, %186, %153
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.platform_device* @platform_device_register_resndata(i32*, i8*, i32, %struct.resource*, i32, %struct.simplefb_platform_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.platform_device*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

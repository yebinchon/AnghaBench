; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi6220-mailbox.c_hi6220_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hi6220_mbox = type { i32, i64, i32, %struct.TYPE_6__, i8*, %struct.TYPE_5__*, i32**, %struct.TYPE_4__*, i8*, %struct.device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_5__ = type { i32, %struct.hi6220_mbox* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBOX_CHAN_MAX = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ioremap ipc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ioremap buffer failed\0A\00", align 1
@hi6220_mbox_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to register a mailbox IRQ handler: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hi6220_mbox_ops = common dso_local global i32 0, align 4
@hi6220_mbox_xlate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"hi6220,mbox-tx-noirq\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to register mailbox %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Mailbox enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6220_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hi6220_mbox*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hi6220_mbox* @devm_kzalloc(%struct.device* %16, i32 120, i32 %17)
  store %struct.hi6220_mbox* %18, %struct.hi6220_mbox** %6, align 8
  %19 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %20 = icmp ne %struct.hi6220_mbox* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %263

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %27 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %26, i32 0, i32 9
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load i32, i32* @MBOX_CHAN_MAX, align 4
  %29 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %30 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %33 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kcalloc(%struct.device* %31, i32 %34, i32 16, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  %38 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %39 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %38, i32 0, i32 5
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %39, align 8
  %40 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %41 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %40, i32 0, i32 5
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %263

47:                                               ; preds = %24
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %50 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kcalloc(%struct.device* %48, i32 %51, i32 8, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_4__*
  %55 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %56 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %55, i32 0, i32 7
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %58 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %57, i32 0, i32 7
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %263

64:                                               ; preds = %47
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i64 @platform_get_irq(%struct.platform_device* %65, i32 0)
  %67 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %68 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %70 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %75 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %263

78:                                               ; preds = %64
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = call %struct.resource* @platform_get_resource(%struct.platform_device* %79, i32 %80, i32 0)
  store %struct.resource* %81, %struct.resource** %7, align 8
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = call i8* @devm_ioremap_resource(%struct.device* %82, %struct.resource* %83)
  %85 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %86 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %88 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %96 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %2, align 4
  br label %263

99:                                               ; preds = %78
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 1)
  store %struct.resource* %102, %struct.resource** %7, align 8
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load %struct.resource*, %struct.resource** %7, align 8
  %105 = call i8* @devm_ioremap_resource(%struct.device* %103, %struct.resource* %104)
  %106 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %107 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %109 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %108, i32 0, i32 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %99
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %117 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %116, i32 0, i32 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @PTR_ERR(i8* %118)
  store i32 %119, i32* %2, align 4
  br label %263

120:                                              ; preds = %99
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %123 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @hi6220_mbox_interrupt, align 4
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = call i32 @dev_name(%struct.device* %127)
  %129 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %130 = call i32 @devm_request_irq(%struct.device* %121, i32 %125, i32 %126, i32 0, i32 %128, %struct.hi6220_mbox* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %263

139:                                              ; preds = %120
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %142 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 7
  store %struct.device* %140, %struct.device** %143, align 8
  %144 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %145 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %144, i32 0, i32 7
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 0
  %148 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %149 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %150, align 8
  %151 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %152 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %155 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %158 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 5
  store i32* @hi6220_mbox_ops, i32** %159, align 8
  %160 = load i32, i32* @hi6220_mbox_xlate, align 4
  %161 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %162 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i32 %160, i32* %163, align 8
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %206, %139
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %167 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %209

170:                                              ; preds = %164
  %171 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %172 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %171, i32 0, i32 5
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %178 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %177, i32 0, i32 7
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store %struct.TYPE_5__* %176, %struct.TYPE_5__** %183, align 8
  %184 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %185 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %184, i32 0, i32 6
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  store i32* null, i32** %189, align 8
  %190 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %191 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %192 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %191, i32 0, i32 5
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store %struct.hi6220_mbox* %190, %struct.hi6220_mbox** %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %200 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %199, i32 0, i32 5
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  store i32 %198, i32* %205, align 8
  br label %206

206:                                              ; preds = %170
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %164

209:                                              ; preds = %164
  %210 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %211 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @ACK_INT_MSK_REG(i8* %212)
  %214 = call i32 @writel(i32 0, i32 %213)
  %215 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %216 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %215, i32 0, i32 4
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @ACK_INT_CLR_REG(i8* %217)
  %219 = call i32 @writel(i32 -1, i32 %218)
  %220 = load %struct.device_node*, %struct.device_node** %4, align 8
  %221 = call i64 @of_find_property(%struct.device_node* %220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %209
  %224 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %225 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %224, i32 0, i32 2
  store i32 0, i32* %225, align 8
  br label %229

226:                                              ; preds = %209
  %227 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %228 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %227, i32 0, i32 2
  store i32 1, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %231 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %236 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  store i32 1, i32* %237, align 4
  br label %245

238:                                              ; preds = %229
  %239 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %240 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  store i32 1, i32* %241, align 8
  %242 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %243 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 3
  store i32 5, i32* %244, align 4
  br label %245

245:                                              ; preds = %238, %234
  %246 = load %struct.device*, %struct.device** %5, align 8
  %247 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %248 = getelementptr inbounds %struct.hi6220_mbox, %struct.hi6220_mbox* %247, i32 0, i32 3
  %249 = call i32 @devm_mbox_controller_register(%struct.device* %246, %struct.TYPE_6__* %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %245
  %253 = load %struct.device*, %struct.device** %5, align 8
  %254 = load i32, i32* %9, align 4
  %255 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %253, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %2, align 4
  br label %263

257:                                              ; preds = %245
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = load %struct.hi6220_mbox*, %struct.hi6220_mbox** %6, align 8
  %260 = call i32 @platform_set_drvdata(%struct.platform_device* %258, %struct.hi6220_mbox* %259)
  %261 = load %struct.device*, %struct.device** %5, align 8
  %262 = call i32 @dev_info(%struct.device* %261, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %257, %252, %133, %113, %92, %73, %61, %44, %21
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.hi6220_mbox* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.hi6220_mbox*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ACK_INT_MSK_REG(i8*) #1

declare dso_local i32 @ACK_INT_CLR_REG(i8*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi6220_mbox*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

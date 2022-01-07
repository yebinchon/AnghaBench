; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_configure_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_configure_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwapb_gpio = type { i32*, i32, i32 }
%struct.dwapb_gpio_port = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32 }
%struct.dwapb_port_property = type { i32, i64*, i32, %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.irq_chip_generic = type { %struct.irq_chip_type*, %struct.dwapb_gpio*, i32 }
%struct.irq_chip_type = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@irq_generic_chip_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gpio-dwapb\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"irq_alloc_domain_generic_chips failed\0A\00", align 1
@irq_gc_ack_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@dwapb_irq_set_type = common dso_local global i32 0, align 4
@dwapb_irq_enable = common dso_local global i32 0, align 4
@dwapb_irq_disable = common dso_local global i32 0, align 4
@dwapb_irq_reqres = common dso_local global i32 0, align 4
@dwapb_irq_relres = common dso_local global i32 0, align 4
@GPIO_PORTA_EOI = common dso_local global i32 0, align 4
@GPIO_INTMASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i8* null, align 8
@IRQ_TYPE_EDGE_BOTH = common dso_local global i8* null, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@dwapb_irq_handler = common dso_local global i32 0, align 4
@dwapb_irq_handler_mfd = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"gpio-dwapb-mfd\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"error requesting IRQ\0A\00", align 1
@dwapb_gpio_to_irq = common dso_local global i32 0, align 4
@dwapb_irq_set_wake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwapb_gpio*, %struct.dwapb_gpio_port*, %struct.dwapb_port_property*)* @dwapb_configure_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwapb_configure_irqs(%struct.dwapb_gpio* %0, %struct.dwapb_gpio_port* %1, %struct.dwapb_port_property* %2) #0 {
  %4 = alloca %struct.dwapb_gpio*, align 8
  %5 = alloca %struct.dwapb_gpio_port*, align 8
  %6 = alloca %struct.dwapb_port_property*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca %struct.irq_chip_generic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_chip_type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwapb_gpio* %0, %struct.dwapb_gpio** %4, align 8
  store %struct.dwapb_gpio_port* %1, %struct.dwapb_gpio_port** %5, align 8
  store %struct.dwapb_port_property* %2, %struct.dwapb_port_property** %6, align 8
  %16 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %5, align 8
  %17 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %16, i32 0, i32 0
  store %struct.gpio_chip* %17, %struct.gpio_chip** %7, align 8
  %18 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %19 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %18, i32 0, i32 3
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %19, align 8
  store %struct.fwnode_handle* %20, %struct.fwnode_handle** %8, align 8
  store %struct.irq_chip_generic* null, %struct.irq_chip_generic** %9, align 8
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %27 = call i32* @irq_domain_create_linear(%struct.fwnode_handle* %24, i32 %25, i32* @irq_generic_chip_ops, %struct.dwapb_gpio* %26)
  %28 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %29 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %31 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %241

35:                                               ; preds = %3
  %36 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %37 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @handle_level_irq, align 4
  %41 = load i32, i32* @IRQ_NOREQUEST, align 4
  %42 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %43 = call i32 @irq_alloc_domain_generic_chips(i32* %38, i32 %39, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %48 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %52 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @irq_domain_remove(i32* %53)
  %55 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %241

57:                                               ; preds = %35
  %58 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %59 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32* %60, i32 0)
  store %struct.irq_chip_generic* %61, %struct.irq_chip_generic** %9, align 8
  %62 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %63 = icmp ne %struct.irq_chip_generic* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %66 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @irq_domain_remove(i32* %67)
  %69 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %70 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %241

71:                                               ; preds = %57
  %72 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %73 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %76 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %78 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %79 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %78, i32 0, i32 1
  store %struct.dwapb_gpio* %77, %struct.dwapb_gpio** %79, align 8
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %137, %71
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %140

83:                                               ; preds = %80
  %84 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %85 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %84, i32 0, i32 0
  %86 = load %struct.irq_chip_type*, %struct.irq_chip_type** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %86, i64 %88
  store %struct.irq_chip_type* %89, %struct.irq_chip_type** %12, align 8
  %90 = load i32, i32* @irq_gc_ack_set_bit, align 4
  %91 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %92 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 8
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %95 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %96 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 7
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %99 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %100 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @dwapb_irq_set_type, align 4
  %103 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %104 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @dwapb_irq_enable, align 4
  %107 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %108 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @dwapb_irq_disable, align 4
  %111 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %112 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @dwapb_irq_reqres, align 4
  %115 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %116 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @dwapb_irq_relres, align 4
  %119 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %120 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %123 = load i32, i32* @GPIO_PORTA_EOI, align 4
  %124 = call i8* @gpio_reg_convert(%struct.dwapb_gpio* %122, i32 %123)
  %125 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %126 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %129 = load i32, i32* @GPIO_INTMASK, align 4
  %130 = call i8* @gpio_reg_convert(%struct.dwapb_gpio* %128, i32 %129)
  %131 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %132 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load i8*, i8** @IRQ_TYPE_LEVEL_MASK, align 8
  %135 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  %136 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %83
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %80

140:                                              ; preds = %80
  %141 = load i8*, i8** @IRQ_TYPE_LEVEL_MASK, align 8
  %142 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %143 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %142, i32 0, i32 0
  %144 = load %struct.irq_chip_type*, %struct.irq_chip_type** %143, align 8
  %145 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %144, i64 0
  %146 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %145, i32 0, i32 1
  store i8* %141, i8** %146, align 8
  %147 = load i8*, i8** @IRQ_TYPE_EDGE_BOTH, align 8
  %148 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %149 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %148, i32 0, i32 0
  %150 = load %struct.irq_chip_type*, %struct.irq_chip_type** %149, align 8
  %151 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %150, i64 1
  %152 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %151, i32 0, i32 1
  store i8* %147, i8** %152, align 8
  %153 = load i32, i32* @handle_edge_irq, align 4
  %154 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %9, align 8
  %155 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %154, i32 0, i32 0
  %156 = load %struct.irq_chip_type*, %struct.irq_chip_type** %155, align 8
  %157 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %156, i64 1
  %158 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 8
  %159 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %160 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %195, label %163

163:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  br label %164

164:                                              ; preds = %191, %163
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %167 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %164
  %171 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %172 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp sge i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %170
  %180 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %181 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @dwapb_irq_handler, align 4
  %188 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %189 = call i32 @irq_set_chained_handler_and_data(i64 %186, i32 %187, %struct.dwapb_gpio* %188)
  br label %190

190:                                              ; preds = %179, %170
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %15, align 4
  br label %164

194:                                              ; preds = %164
  br label %222

195:                                              ; preds = %140
  %196 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %197 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.dwapb_port_property*, %struct.dwapb_port_property** %6, align 8
  %200 = getelementptr inbounds %struct.dwapb_port_property, %struct.dwapb_port_property* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @dwapb_irq_handler_mfd, align 4
  %205 = load i32, i32* @IRQF_SHARED, align 4
  %206 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %207 = call i32 @devm_request_irq(i32 %198, i64 %203, i32 %204, i32 %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.dwapb_gpio* %206)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %195
  %211 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %212 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @dev_err(i32 %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %215 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %216 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @irq_domain_remove(i32* %217)
  %219 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %220 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %219, i32 0, i32 0
  store i32* null, i32** %220, align 8
  br label %241

221:                                              ; preds = %195
  br label %222

222:                                              ; preds = %221, %194
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %233, %222
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %229 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @irq_create_mapping(i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %10, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %223

236:                                              ; preds = %223
  %237 = load i32, i32* @dwapb_gpio_to_irq, align 4
  %238 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %5, align 8
  %239 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 4
  br label %241

241:                                              ; preds = %236, %210, %64, %46, %34
  ret void
}

declare dso_local i32* @irq_domain_create_linear(%struct.fwnode_handle*, i32, i32*, %struct.dwapb_gpio*) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @irq_domain_remove(i32*) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32*, i32) #1

declare dso_local i8* @gpio_reg_convert(%struct.dwapb_gpio*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i64, i32, %struct.dwapb_gpio*) #1

declare dso_local i32 @devm_request_irq(i32, i64, i32, i32, i8*, %struct.dwapb_gpio*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

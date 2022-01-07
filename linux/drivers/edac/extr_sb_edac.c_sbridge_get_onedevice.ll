; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_get_onedevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_sbridge_get_onedevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_id_table = type { i32, %struct.pci_id_descr* }
%struct.pci_id_descr = type { i64, i32, i64 }
%struct.sbridge_dev = type { i64, %struct.pci_dev** }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Seeking for: PCI ID %04x:%04x\0A\00", align 1
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device not found: %04x:%04x\0A\00", align 1
@IMC1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Skip IMC1: %04x:%04x (since HA1 was absent)\0A\00", align 1
@SOCK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Duplicated device for %04x:%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Couldn't enable %04x:%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Detected %04x:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev**, i32*, %struct.pci_id_table*, i32, i32)* @sbridge_get_onedevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbridge_get_onedevice(%struct.pci_dev** %0, i32* %1, %struct.pci_id_table* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci_id_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sbridge_dev*, align 8
  %13 = alloca %struct.pci_id_descr*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_dev** %0, %struct.pci_dev*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pci_id_table* %2, %struct.pci_id_table** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.sbridge_dev* null, %struct.sbridge_dev** %12, align 8
  %18 = load %struct.pci_id_table*, %struct.pci_id_table** %9, align 8
  %19 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %18, i32 0, i32 1
  %20 = load %struct.pci_id_descr*, %struct.pci_id_descr** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %20, i64 %22
  store %struct.pci_id_descr* %23, %struct.pci_id_descr** %13, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* @KERN_DEBUG, align 4
  %25 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %26 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %27 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sbridge_printk(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %31 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %32 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pci_dev**, %struct.pci_dev*** %7, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %34, align 8
  %36 = call %struct.pci_dev* @pci_get_device(i32 %30, i32 %33, %struct.pci_dev* %35)
  store %struct.pci_dev* %36, %struct.pci_dev** %14, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %5
  %40 = load %struct.pci_dev**, %struct.pci_dev*** %7, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %40, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %45 = load %struct.pci_dev**, %struct.pci_dev*** %7, align 8
  store %struct.pci_dev* %44, %struct.pci_dev** %45, align 8
  store i32 0, i32* %6, align 4
  br label %208

46:                                               ; preds = %39
  %47 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %48 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %208

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %208

58:                                               ; preds = %52
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %61 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %62 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sbridge_printk(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %208

67:                                               ; preds = %5
  %68 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @pci_domain_nr(%struct.TYPE_2__* %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %180, %67
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %81 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %85 = call %struct.sbridge_dev* @get_sbridge_dev(i32 %78, i32 %79, i64 %82, i32 %83, %struct.sbridge_dev* %84)
  store %struct.sbridge_dev* %85, %struct.sbridge_dev** %12, align 8
  %86 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %87 = icmp ne %struct.sbridge_dev* %86, null
  br i1 %87, label %131, label %88

88:                                               ; preds = %77
  %89 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %90 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IMC1, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %99 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %100 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %104 = call i32 @pci_dev_put(%struct.pci_dev* %103)
  store i32 0, i32* %6, align 4
  br label %208

105:                                              ; preds = %94, %88
  %106 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %107 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SOCK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %182

112:                                              ; preds = %105
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %116 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.pci_id_table*, %struct.pci_id_table** %9, align 8
  %119 = call %struct.sbridge_dev* @alloc_sbridge_dev(i32 %113, i32 %114, i64 %117, %struct.pci_id_table* %118)
  store %struct.sbridge_dev* %119, %struct.sbridge_dev** %12, align 8
  %120 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %121 = icmp ne %struct.sbridge_dev* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %112
  %123 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %124 = call i32 @pci_dev_put(%struct.pci_dev* %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %208

127:                                              ; preds = %112
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %127, %77
  %132 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %133 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %132, i32 0, i32 1
  %134 = load %struct.pci_dev**, %struct.pci_dev*** %133, align 8
  %135 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %136 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %134, i64 %137
  %139 = load %struct.pci_dev*, %struct.pci_dev** %138, align 8
  %140 = icmp ne %struct.pci_dev* %139, null
  br i1 %140, label %141, label %152

141:                                              ; preds = %131
  %142 = load i32, i32* @KERN_ERR, align 4
  %143 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %144 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %145 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @sbridge_printk(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %149 = call i32 @pci_dev_put(%struct.pci_dev* %148)
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %208

152:                                              ; preds = %131
  %153 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %154 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %155 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %154, i32 0, i32 1
  %156 = load %struct.pci_dev**, %struct.pci_dev*** %155, align 8
  %157 = load %struct.sbridge_dev*, %struct.sbridge_dev** %12, align 8
  %158 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %156, i64 %159
  store %struct.pci_dev* %153, %struct.pci_dev** %161, align 8
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %167 = call i32 @pci_dev_get(%struct.pci_dev* %166)
  br label %168

168:                                              ; preds = %165, %152
  %169 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %170 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SOCK, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i32, i32* %17, align 4
  %176 = load %struct.pci_id_table*, %struct.pci_id_table** %9, align 8
  %177 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %77

181:                                              ; preds = %174, %168
  br label %182

182:                                              ; preds = %181, %111
  %183 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %184 = call i64 @pci_enable_device(%struct.pci_dev* %183)
  %185 = icmp slt i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %182
  %190 = load i32, i32* @KERN_ERR, align 4
  %191 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %192 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %193 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @sbridge_printk(i32 %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %194)
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %208

198:                                              ; preds = %182
  %199 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %200 = load %struct.pci_id_descr*, %struct.pci_id_descr** %13, align 8
  %201 = getelementptr inbounds %struct.pci_id_descr, %struct.pci_id_descr* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %202)
  %204 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %205 = call i32 @pci_dev_get(%struct.pci_dev* %204)
  %206 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %207 = load %struct.pci_dev**, %struct.pci_dev*** %7, align 8
  store %struct.pci_dev* %206, %struct.pci_dev** %207, align 8
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %198, %189, %141, %122, %97, %58, %55, %51, %43
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @sbridge_printk(i32, i8*, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local %struct.sbridge_dev* @get_sbridge_dev(i32, i32, i64, i32, %struct.sbridge_dev*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.sbridge_dev* @alloc_sbridge_dev(i32, i32, i64, %struct.pci_id_table*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

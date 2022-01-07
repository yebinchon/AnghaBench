; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_register_mci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_register_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i7core_dev = type { %struct.mem_ctl_info*, %struct.TYPE_4__**, i32 }
%struct.mem_ctl_info = type { i8*, i32, i32*, i32*, i32, i8*, i8*, i32, %struct.i7core_pvt* }
%struct.i7core_pvt = type { i32, %struct.TYPE_3__, i64, %struct.i7core_dev* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.edac_mc_layer = type { i32, i32, i32 }

@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@NUM_CHANS = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_SLOT = common dso_local global i32 0, align 4
@MAX_DIMMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MC: mci = %p, dev = %p\0A\00", align 1
@MEM_FLAG_DDR3 = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"i7core_edac.c\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"i7 core #%d\00", align 1
@i7core_dev_groups = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MC: failed edac_mc_add_mc()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"MC: failed to create sysfs nodes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i7core_dev*)* @i7core_register_mci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7core_register_mci(%struct.i7core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i7core_dev*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i7core_pvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.edac_mc_layer], align 16
  store %struct.i7core_dev* %0, %struct.i7core_dev** %3, align 8
  %8 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %9 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @NUM_CHANS, align 4
  %12 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %13 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %14, i32 0, i32 0
  store i32 0, i32* %15, align 16
  %16 = load i32, i32* @EDAC_MC_LAYER_SLOT, align 4
  %17 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %18 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @MAX_DIMMS, align 4
  %20 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %21 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %23 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %25 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %27)
  %29 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %30 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %26, i32 %28, %struct.edac_mc_layer* %29, i32 56)
  store %struct.mem_ctl_info* %30, %struct.mem_ctl_info** %4, align 8
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %32 = icmp ne %struct.mem_ctl_info* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %180

40:                                               ; preds = %1
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %42 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %43 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.mem_ctl_info* %41, i32* %47)
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %50 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %49, i32 0, i32 8
  %51 = load %struct.i7core_pvt*, %struct.i7core_pvt** %50, align 8
  store %struct.i7core_pvt* %51, %struct.i7core_pvt** %5, align 8
  %52 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %53 = call i32 @memset(%struct.i7core_pvt* %52, i32 0, i32 56)
  %54 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %55 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %56 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %55, i32 0, i32 3
  store %struct.i7core_dev* %54, %struct.i7core_dev** %56, align 8
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %58 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %59 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %58, i32 0, i32 0
  store %struct.mem_ctl_info* %57, %struct.mem_ctl_info** %59, align 8
  %60 = load i32, i32* @MEM_FLAG_DDR3, align 4
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %62 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @EDAC_FLAG_NONE, align 8
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @EDAC_FLAG_NONE, align 8
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %68 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %70 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %73 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @kasprintf(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %77 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %79 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %40
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %174

85:                                               ; preds = %40
  %86 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %87 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @pci_name(%struct.TYPE_4__* %90)
  %92 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %93 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %95 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %94, i32 0, i32 3
  store i32* null, i32** %95, align 8
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %97 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %98 = call i32 @mci_bind_devs(%struct.mem_ctl_info* %96, %struct.i7core_dev* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %85
  br label %169

105:                                              ; preds = %85
  %106 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %107 = call i32 @get_dimm_config(%struct.mem_ctl_info* %106)
  %108 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %109 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %115 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %117 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %122 = call i32 @enable_sdram_scrub_setting(%struct.mem_ctl_info* %121)
  br label %123

123:                                              ; preds = %120, %105
  %124 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %125 = load i32, i32* @i7core_dev_groups, align 4
  %126 = call i32 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info* %124, i32 %125)
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %169

133:                                              ; preds = %123
  %134 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %135 = call i64 @i7core_create_sysfs_devices(%struct.mem_ctl_info* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %140 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @edac_mc_del_mc(i32* %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %169

145:                                              ; preds = %133
  %146 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %147 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %150 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 8
  %152 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %153 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i32 -1, i32* %154, align 4
  %155 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %156 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  store i32 -1, i32* %157, align 8
  %158 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %159 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  store i32 -1, i32* %160, align 4
  %161 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %162 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  store i32 -1, i32* %163, align 8
  %164 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %165 = call i32 @i7core_pci_ctl_create(%struct.i7core_pvt* %164)
  %166 = call i32 (...) @get_dclk_freq()
  %167 = load %struct.i7core_pvt*, %struct.i7core_pvt** %5, align 8
  %168 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %2, align 4
  br label %180

169:                                              ; preds = %137, %129, %104
  %170 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %171 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @kfree(i32 %172)
  br label %174

174:                                              ; preds = %169, %82
  %175 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %176 = call i32 @edac_mc_free(%struct.mem_ctl_info* %175)
  %177 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  %178 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %177, i32 0, i32 0
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %178, align 8
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %174, %145, %37
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.i7core_pvt*, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

declare dso_local i32 @mci_bind_devs(%struct.mem_ctl_info*, %struct.i7core_dev*) #1

declare dso_local i32 @get_dimm_config(%struct.mem_ctl_info*) #1

declare dso_local i32 @enable_sdram_scrub_setting(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info*, i32) #1

declare dso_local i64 @i7core_create_sysfs_devices(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_del_mc(i32*) #1

declare dso_local i32 @i7core_pci_ctl_create(%struct.i7core_pvt*) #1

declare dso_local i32 @get_dclk_freq(...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

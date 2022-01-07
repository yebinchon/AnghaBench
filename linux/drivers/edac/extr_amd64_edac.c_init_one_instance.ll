; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_init_one_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_init_one_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.amd64_family_type = type { i32, i32, i32, i32 }
%struct.mem_ctl_info = type { i32, i32*, %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, i32, i64, %struct.amd64_pvt*, %struct.pci_dev*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.amd64_pvt*)* }
%struct.edac_mc_layer = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.pci_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@num_umcs = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHIP_SELECT = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@amd64_edac_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed edac_mc_add_mc()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @init_one_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one_instance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.amd64_family_type*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca [2 x %struct.edac_mc_layer], align 16
  %8 = alloca %struct.amd64_pvt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_6__* @node_to_amd_nb(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %4, align 8
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %5, align 8
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %6, align 8
  store %struct.amd64_pvt* null, %struct.amd64_pvt** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.amd64_pvt* @kzalloc(i32 48, i32 %19)
  store %struct.amd64_pvt* %20, %struct.amd64_pvt** %8, align 8
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %22 = icmp ne %struct.amd64_pvt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %188

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %27 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 4
  store %struct.pci_dev* %28, %struct.pci_dev** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %34 = call %struct.amd64_family_type* @per_family_init(%struct.amd64_pvt* %33)
  store %struct.amd64_family_type* %34, %struct.amd64_family_type** %5, align 8
  %35 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %36 = icmp ne %struct.amd64_family_type* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %185

38:                                               ; preds = %24
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %40 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 23
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i32, i32* @num_umcs, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.amd64_pvt* @kcalloc(i32 %44, i32 4, i32 %45)
  %47 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %48 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %47, i32 0, i32 3
  store %struct.amd64_pvt* %46, %struct.amd64_pvt** %48, align 8
  %49 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %50 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %49, i32 0, i32 3
  %51 = load %struct.amd64_pvt*, %struct.amd64_pvt** %50, align 8
  %52 = icmp ne %struct.amd64_pvt* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %185

56:                                               ; preds = %43
  %57 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %58 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %61 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  br label %70

63:                                               ; preds = %38
  %64 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %65 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %68 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @reserve_mc_sibling_devs(%struct.amd64_pvt* %71, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %174

78:                                               ; preds = %70
  %79 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %80 = call i32 @read_mc_regs(%struct.amd64_pvt* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %84 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %83, i32 0, i32 6
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64 (%struct.amd64_pvt*)*, i64 (%struct.amd64_pvt*)** %86, align 8
  %88 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %89 = call i64 %87(%struct.amd64_pvt* %88)
  %90 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %91 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %93 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  br label %171

97:                                               ; preds = %78
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* @EDAC_MC_LAYER_CHIP_SELECT, align 4
  %101 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %102 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %104 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %103, i32 0, i32 5
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %110 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 16
  %111 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %112 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %114 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %115 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %117 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 23
  br i1 %119, label %120, label %124

120:                                              ; preds = %97
  %121 = load i32, i32* @num_umcs, align 4
  %122 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %123 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %127

124:                                              ; preds = %97
  %125 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %126 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %125, i32 0, i32 0
  store i32 2, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 1
  %129 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* %3, align 4
  %131 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %132 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %131)
  %133 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %7, i64 0, i64 0
  %134 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %130, i32 %132, %struct.edac_mc_layer* %133, i32 0)
  store %struct.mem_ctl_info* %134, %struct.mem_ctl_info** %6, align 8
  %135 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %136 = icmp ne %struct.mem_ctl_info* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %127
  br label %171

138:                                              ; preds = %127
  %139 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %140 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %141 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %140, i32 0, i32 2
  store %struct.amd64_pvt* %139, %struct.amd64_pvt** %141, align 8
  %142 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %143 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %142, i32 0, i32 4
  %144 = load %struct.pci_dev*, %struct.pci_dev** %143, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %147 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  %148 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %149 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %150 = call i32 @setup_mci_misc_attrs(%struct.mem_ctl_info* %148, %struct.amd64_family_type* %149)
  %151 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %152 = call i64 @init_csrows(%struct.mem_ctl_info* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %138
  %155 = load i32, i32* @EDAC_FLAG_NONE, align 4
  %156 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %157 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %154, %138
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %12, align 4
  %161 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %162 = load i32, i32* @amd64_edac_attr_groups, align 4
  %163 = call i64 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %168

167:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %190

168:                                              ; preds = %165
  %169 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %170 = call i32 @edac_mc_free(%struct.mem_ctl_info* %169)
  br label %171

171:                                              ; preds = %168, %137, %96
  %172 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %173 = call i32 @free_mc_sibling_devs(%struct.amd64_pvt* %172)
  br label %174

174:                                              ; preds = %171, %77
  %175 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %176 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %177, 23
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %181 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %180, i32 0, i32 3
  %182 = load %struct.amd64_pvt*, %struct.amd64_pvt** %181, align 8
  %183 = call i32 @kfree(%struct.amd64_pvt* %182)
  br label %184

184:                                              ; preds = %179, %174
  br label %185

185:                                              ; preds = %184, %53, %37
  %186 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %187 = call i32 @kfree(%struct.amd64_pvt* %186)
  br label %188

188:                                              ; preds = %185, %23
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %167
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_6__* @node_to_amd_nb(i32) #1

declare dso_local %struct.amd64_pvt* @kzalloc(i32, i32) #1

declare dso_local %struct.amd64_family_type* @per_family_init(%struct.amd64_pvt*) #1

declare dso_local %struct.amd64_pvt* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @reserve_mc_sibling_devs(%struct.amd64_pvt*, i32, i32) #1

declare dso_local i32 @read_mc_regs(%struct.amd64_pvt*) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i32 @setup_mci_misc_attrs(%struct.mem_ctl_info*, %struct.amd64_family_type*) #1

declare dso_local i64 @init_csrows(%struct.mem_ctl_info*) #1

declare dso_local i64 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

declare dso_local i32 @free_mc_sibling_devs(%struct.amd64_pvt*) #1

declare dso_local i32 @kfree(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

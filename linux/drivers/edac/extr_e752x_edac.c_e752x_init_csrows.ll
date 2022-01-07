; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info** }
%struct.csrow_info = type { i64, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@E752X_DRA = common dso_local global i64 0, align 8
@E752X_DRC = common dso_local global i32 0, align 4
@E752X_DRB = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(%d) cumul_size 0x%x\0A\00", align 1
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_FLAG_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Initializing rank at (%i,%i)\0A\00", align 1
@MEM_RDDR = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @e752x_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csrow_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %39, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i64, i64* @E752X_DRA, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i64 %31, i32* %21)
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 8
  %36 = shl i32 %33, %35
  %37 = load i32, i32* %16, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load i32, i32* @E752X_DRC, align 4
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i32 %44, i32* %17)
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @dual_channel_active(i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %17, align 4
  %54 = ashr i32 %53, 20
  %55 = and i32 %54, 3
  store i32 %55, i32* %14, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %189, %42
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %192

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 %65, 2
  %67 = ashr i32 %63, %66
  %68 = and i32 %67, 3
  store i32 %68, i32* %11, align 4
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %70 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %69, i32 0, i32 2
  %71 = load %struct.csrow_info**, %struct.csrow_info*** %70, align 8
  %72 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @remap_csrow_index(%struct.mem_ctl_info* %72, i32 %73)
  %75 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %71, i64 %74
  %76 = load %struct.csrow_info*, %struct.csrow_info** %75, align 8
  store %struct.csrow_info* %76, %struct.csrow_info** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load i64, i64* @E752X_DRB, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i32 @pci_read_config_byte(%struct.pci_dev* %80, i64 %84, i32* %15)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 25, %87
  %89 = load i32, i32* @PAGE_SHIFT, align 4
  %90 = sub nsw i32 %88, %89
  %91 = shl i32 %86, %90
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %62
  br label %189

100:                                              ; preds = %62
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %103 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %107 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %9, align 8
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %100
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @EDAC_FLAG_S4ECD4ED, align 4
  %126 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %127 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %137

130:                                              ; preds = %120, %117
  %131 = load i32, i32* @EDAC_SECDED, align 4
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %133 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %134 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %130, %123
  br label %140

138:                                              ; preds = %100
  %139 = load i32, i32* @EDAC_NONE, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %138, %137
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %185, %140
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %144 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %141
  %148 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %149 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %149, align 8
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %150, i64 %152
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load %struct.dimm_info*, %struct.dimm_info** %155, align 8
  store %struct.dimm_info* %156, %struct.dimm_info** %22, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load i32, i32* %20, align 4
  %161 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %162 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %160, %163
  %165 = load %struct.dimm_info*, %struct.dimm_info** %22, align 8
  %166 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.dimm_info*, %struct.dimm_info** %22, align 8
  %168 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %167, i32 0, i32 1
  store i32 4096, i32* %168, align 4
  %169 = load i32, i32* @MEM_RDDR, align 4
  %170 = load %struct.dimm_info*, %struct.dimm_info** %22, align 8
  %171 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %147
  %175 = load i32, i32* @DEV_X4, align 4
  br label %178

176:                                              ; preds = %147
  %177 = load i32, i32* @DEV_X8, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = load %struct.dimm_info*, %struct.dimm_info** %22, align 8
  %181 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.dimm_info*, %struct.dimm_info** %22, align 8
  %184 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %19, align 4
  br label %141

188:                                              ; preds = %141
  br label %189

189:                                              ; preds = %188, %99
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %56

192:                                              ; preds = %56
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @dual_channel_active(i32) #1

declare dso_local i64 @remap_csrow_index(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

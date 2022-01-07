; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_dram_base_limit_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_dram_base_limit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, %struct.TYPE_7__*, %struct.pci_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.amd_northbridge = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DRAM_BASE_LO = common dso_local global i64 0, align 8
@DRAM_LIMIT_LO = common dso_local global i64 0, align 8
@DRAM_BASE_HI = common dso_local global i64 0, align 8
@DRAM_LIMIT_HI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_15H_M60H_NB_F1 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_15H_M30H_NB_F1 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_15H_NB_F1 = common dso_local global i32 0, align 4
@DRAM_LOCAL_NODE_LIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32)* @read_dram_base_limit_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dram_base_limit_regs(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_northbridge*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 3
  store i32 %11, i32* %8, align 4
  %12 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %13 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %12, i32 0, i32 3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %15 = load i64, i64* @DRAM_BASE_LO, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %14, i64 %18, i32* %26)
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 3
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  %31 = load i64, i64* @DRAM_LIMIT_LO, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %36 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %30, i64 %34, i32* %42)
  %44 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %45 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 15
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  br label %195

49:                                               ; preds = %2
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dram_rw(%struct.amd64_pvt* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %195

55:                                               ; preds = %49
  %56 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %57 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %56, i32 0, i32 3
  %58 = load %struct.pci_dev*, %struct.pci_dev** %57, align 8
  %59 = load i64, i64* @DRAM_BASE_HI, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %64 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %58, i64 %62, i32* %70)
  %72 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %72, i32 0, i32 3
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = load i64, i64* @DRAM_LIMIT_HI, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %80 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %74, i64 %78, i32* %86)
  %88 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %89 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 21
  br i1 %91, label %92, label %93

92:                                               ; preds = %55
  br label %195

93:                                               ; preds = %55
  %94 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @dram_dst_node(%struct.amd64_pvt* %94, i32 %95)
  %97 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %96)
  store %struct.amd_northbridge* %97, %struct.amd_northbridge** %5, align 8
  %98 = load %struct.amd_northbridge*, %struct.amd_northbridge** %5, align 8
  %99 = icmp ne %struct.amd_northbridge* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @WARN_ON(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %195

105:                                              ; preds = %93
  %106 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %107 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 96
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @PCI_DEVICE_ID_AMD_15H_M60H_NB_F1, align 4
  store i32 %111, i32* %7, align 4
  br label %122

112:                                              ; preds = %105
  %113 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %114 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 48
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @PCI_DEVICE_ID_AMD_15H_M30H_NB_F1, align 4
  store i32 %118, i32* %7, align 4
  br label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @PCI_DEVICE_ID_AMD_15H_NB_F1, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %117
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.amd_northbridge*, %struct.amd_northbridge** %5, align 8
  %124 = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.amd_northbridge*, %struct.amd_northbridge** %5, align 8
  %130 = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call %struct.pci_dev* @pci_get_related_function(i32 %127, i32 %128, %struct.TYPE_8__* %131)
  store %struct.pci_dev* %132, %struct.pci_dev** %6, align 8
  %133 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %134 = icmp ne %struct.pci_dev* %133, null
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i64 @WARN_ON(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  br label %195

140:                                              ; preds = %122
  %141 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %142 = load i64, i64* @DRAM_LOCAL_NODE_LIM, align 8
  %143 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %141, i64 %142, i32* %9)
  %144 = call i32 @GENMASK_ULL(i32 15, i32 0)
  %145 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %146 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %144
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, 8191
  %157 = shl i32 %156, 3
  %158 = or i32 %157, 7
  %159 = shl i32 %158, 16
  %160 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %161 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %159
  store i32 %169, i32* %167, align 4
  %170 = call i32 @GENMASK_ULL(i32 7, i32 0)
  %171 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %172 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %171, i32 0, i32 2
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %170
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %181, 13
  %183 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %184 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %183, i32 0, i32 2
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %182
  store i32 %192, i32* %190, align 4
  %193 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %194 = call i32 @pci_dev_put(%struct.pci_dev* %193)
  br label %195

195:                                              ; preds = %140, %139, %104, %92, %54, %48
  ret void
}

declare dso_local i32 @amd64_read_pci_cfg(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @dram_rw(%struct.amd64_pvt*, i32) #1

declare dso_local %struct.amd_northbridge* @node_to_amd_nb(i32) #1

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pci_dev* @pci_get_related_function(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

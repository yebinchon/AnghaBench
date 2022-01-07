; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, i32, %struct.nitrox_q_vector*, i32*, %struct.pci_dev* }
%struct.nitrox_q_vector = type { i32, i32, i32, i32, %struct.nitrox_device*, i32* }
%struct.pci_dev = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"msix vectors %d alloc failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PKT_RING_MSIX_BASE = common dso_local global i32 0, align 4
@NR_RING_VECTORS = common dso_local global i32 0, align 4
@IRQ_NAMESZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nitrox-pkt%d\00", align 1
@nps_pkt_slc_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"irq failed for pkt ring/port%d\0A\00", align 1
@pkt_slc_resp_tasklet = common dso_local global i32 0, align 4
@NON_RING_MSIX_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"nitrox-core-int%d\00", align 1
@nps_core_int_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"irq failed for nitrox-core-int%d\0A\00", align 1
@nps_core_int_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nitrox_register_interrupts(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.nitrox_q_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %12 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_msix_vec_count(%struct.pci_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %20 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %25 = call i32 @DEV(%struct.nitrox_device* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %186

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %32 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.nitrox_q_vector* @kcalloc(i32 %33, i32 32, i32 %34)
  %36 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %37 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %36, i32 0, i32 2
  store %struct.nitrox_q_vector* %35, %struct.nitrox_q_vector** %37, align 8
  %38 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %39 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %38, i32 0, i32 2
  %40 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %39, align 8
  %41 = icmp ne %struct.nitrox_q_vector* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %186

47:                                               ; preds = %29
  %48 = load i32, i32* @PKT_RING_MSIX_BASE, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %130, %47
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %134

54:                                               ; preds = %49
  %55 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %56 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %55, i32 0, i32 2
  %57 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %57, i64 %59
  store %struct.nitrox_q_vector* %60, %struct.nitrox_q_vector** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @NR_RING_VECTORS, align 4
  %63 = sdiv i32 %61, %62
  %64 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %65 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %67 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %70 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %134

74:                                               ; preds = %54
  %75 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %76 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %79 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %84 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %83, i32 0, i32 5
  store i32* %82, i32** %84, align 8
  %85 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %86 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IRQ_NAMESZ, align 4
  %89 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %90 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @snprintf(i32 %87, i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pci_irq_vector(%struct.pci_dev* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @nps_pkt_slc_isr, align 4
  %98 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %99 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %102 = call i32 @request_irq(i32 %96, i32 %97, i32 0, i32 %100, %struct.nitrox_q_vector* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %74
  %106 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %107 = call i32 @DEV(%struct.nitrox_device* %106)
  %108 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %109 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %182

112:                                              ; preds = %74
  %113 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %114 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (...) @num_online_cpus()
  %117 = srem i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @get_cpu_mask(i32 %119)
  %121 = call i32 @irq_set_affinity_hint(i32 %118, i32 %120)
  %122 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %123 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %122, i32 0, i32 2
  %124 = load i32, i32* @pkt_slc_resp_tasklet, align 4
  %125 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %126 = ptrtoint %struct.nitrox_q_vector* %125 to i64
  %127 = call i32 @tasklet_init(i32* %123, i32 %124, i64 %126)
  %128 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %129 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* @NR_RING_VECTORS, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %49

134:                                              ; preds = %73, %49
  %135 = load i32, i32* @NON_RING_MSIX_BASE, align 4
  store i32 %135, i32* %10, align 4
  %136 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %137 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %136, i32 0, i32 2
  %138 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %138, i64 %140
  store %struct.nitrox_q_vector* %141, %struct.nitrox_q_vector** %5, align 8
  %142 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %143 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %144 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %143, i32 0, i32 4
  store %struct.nitrox_device* %142, %struct.nitrox_device** %144, align 8
  %145 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %146 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IRQ_NAMESZ, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @snprintf(i32 %147, i32 %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @pci_irq_vector(%struct.pci_dev* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @nps_core_int_isr, align 4
  %156 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %157 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %160 = call i32 @request_irq(i32 %154, i32 %155, i32 0, i32 %158, %struct.nitrox_q_vector* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %134
  %164 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %165 = call i32 @DEV(%struct.nitrox_device* %164)
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %182

168:                                              ; preds = %134
  %169 = call i32 (...) @num_online_cpus()
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @get_cpu_mask(i32 %171)
  %173 = call i32 @irq_set_affinity_hint(i32 %170, i32 %172)
  %174 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %175 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %174, i32 0, i32 2
  %176 = load i32, i32* @nps_core_int_tasklet, align 4
  %177 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %178 = ptrtoint %struct.nitrox_q_vector* %177 to i64
  %179 = call i32 @tasklet_init(i32* %175, i32 %176, i64 %178)
  %180 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %181 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  store i32 0, i32* %2, align 4
  br label %186

182:                                              ; preds = %163, %105
  %183 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %184 = call i32 @nitrox_unregister_interrupts(%struct.nitrox_device* %183)
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %168, %42, %23
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @pci_msix_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local %struct.nitrox_q_vector* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.nitrox_q_vector*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @nitrox_unregister_interrupts(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

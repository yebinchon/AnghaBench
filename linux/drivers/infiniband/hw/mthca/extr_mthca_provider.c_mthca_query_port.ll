; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.ib_smp = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @mthca_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.ib_smp*, align 8
  %8 = alloca %struct.ib_smp*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %7, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %8, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_smp* @kzalloc(i32 16, i32 %12)
  store %struct.ib_smp* %13, %struct.ib_smp** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ib_smp* @kmalloc(i32 16, i32 %14)
  store %struct.ib_smp* %15, %struct.ib_smp** %8, align 8
  %16 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %17 = icmp ne %struct.ib_smp* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %20 = icmp ne %struct.ib_smp* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  br label %181

22:                                               ; preds = %18
  %23 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %24 = call i32 @init_query_mad(%struct.ib_smp* %23)
  %25 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %26 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %31 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %33 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %36 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %37 = call i32 @mthca_MAD_IFC(%struct.TYPE_5__* %33, i32 1, i32 1, i32 %34, i32* null, i32* null, %struct.ib_smp* %35, %struct.ib_smp* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %181

41:                                               ; preds = %22
  %42 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %43 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 16
  %46 = call i8* @be16_to_cpup(i32* %45)
  %47 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %47, i32 0, i32 18
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %50 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 34
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 7
  %55 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 18
  %61 = call i8* @be16_to_cpup(i32* %60)
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 17
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %65 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 36
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %73 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 32
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %79 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 33
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 4
  %86 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %89 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 20
  %92 = call i32 @be32_to_cpup(i32* %91)
  %93 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %93, i32 0, i32 16
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %96 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %101 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %100, i32 0, i32 15
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %102, i32 0, i32 4
  store i32 -2147483648, i32* %103, align 8
  %104 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %105 = call %struct.TYPE_5__* @to_mdev(%struct.ib_device* %104)
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %109, i32 0, i32 14
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %112 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 46
  %115 = call i8* @be16_to_cpup(i32* %114)
  %116 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %116, i32 0, i32 13
  store i8* %115, i8** %117, align 8
  %118 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %119 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 48
  %122 = call i8* @be16_to_cpup(i32* %121)
  %123 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %123, i32 0, i32 12
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %126 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 31
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 15
  %131 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %134 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 35
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 4
  %139 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %142 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 41
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 15
  %147 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %148 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %150 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 36
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 4
  %155 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  %157 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %158 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 51
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 31
  %163 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %164 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %166 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 37
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 4
  %171 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %174 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 41
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 4
  %179 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %180 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %179, i32 0, i32 11
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %41, %40, %21
  %182 = load %struct.ib_smp*, %struct.ib_smp** %7, align 8
  %183 = call i32 @kfree(%struct.ib_smp* %182)
  %184 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %185 = call i32 @kfree(%struct.ib_smp* %184)
  %186 = load i32, i32* %9, align 4
  ret i32 %186
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.TYPE_5__*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local %struct.TYPE_5__* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

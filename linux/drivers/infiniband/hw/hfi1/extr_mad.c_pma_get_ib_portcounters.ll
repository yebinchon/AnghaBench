; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_ib_portcounters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_ib_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i8*, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i64 }
%struct._port_ectrs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i8*)* @pma_get_ib_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_ib_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct._port_ectrs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %15, %struct.ib_pma_portcounters** %7, align 8
  %16 = call i32 @memset(%struct._port_ectrs* %8, i32 0, i32 40)
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @pma_get_opa_port_ectrs(%struct.ib_device* %17, %struct._port_ectrs* %8, i8* %18)
  %20 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %21 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %27 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %33 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %34 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 8
  br label %192

38:                                               ; preds = %25
  %39 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %40 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %45, 255
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %49 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %48, i32 0, i32 1
  store i32 255, i32* %49, align 8
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %56 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 255
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %66 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %65, i32 0, i32 2
  store i32 255, i32* %66, align 4
  br label %74

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %73 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be64_to_cpu(i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %79, 65535
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = call i8* @cpu_to_be16(i32 65535)
  %83 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %84 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  br label %90

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %89 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %81
  %91 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be64_to_cpu(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %95, 65535
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = call i8* @cpu_to_be16(i32 65535)
  %99 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %100 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %99, i32 0, i32 9
  store i8* %98, i8** %100, align 8
  br label %106

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = call i8* @cpu_to_be16(i32 %102)
  %104 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %105 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %97
  %107 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be64_to_cpu(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i8* @cpu_to_be16(i32 %110)
  %112 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %113 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be64_to_cpu(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ugt i64 %118, 65535
  br i1 %119, label %120, label %124

120:                                              ; preds = %106
  %121 = call i8* @cpu_to_be16(i32 65535)
  %122 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %123 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  br label %129

124:                                              ; preds = %106
  %125 = load i32, i32* %10, align 4
  %126 = call i8* @cpu_to_be16(i32 %125)
  %127 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %128 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %127, i32 0, i32 7
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %120
  %130 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be64_to_cpu(i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ugt i64 %134, 255
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %138 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %137, i32 0, i32 3
  store i32 255, i32* %138, align 8
  br label %146

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %145 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %139, %136
  %147 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be64_to_cpu(i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ugt i64 %151, 255
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %155 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %154, i32 0, i32 4
  store i32 255, i32* %155, align 4
  br label %163

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %162 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %153
  %164 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @be64_to_cpu(i32 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ugt i64 %168, 15
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 15, i32* %10, align 4
  br label %171

171:                                              ; preds = %170, %163
  %172 = load i32, i32* %10, align 4
  %173 = shl i32 %172, 4
  store i32 %173, i32* %9, align 4
  %174 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @be64_to_cpu(i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp ugt i64 %178, 15
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i32 15, i32* %10, align 4
  br label %181

181:                                              ; preds = %180, %171
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %9, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %189 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %188, i32 0, i32 6
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %191 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %190, i32 0, i32 5
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %181, %31
  %193 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %194 = bitcast %struct.ib_pma_mad* %193 to %struct.ib_mad_hdr*
  %195 = call i32 @reply(%struct.ib_mad_hdr* %194)
  ret i32 %195
}

declare dso_local i32 @memset(%struct._port_ectrs*, i32, i32) #1

declare dso_local i32 @pma_get_opa_port_ectrs(%struct.ib_device*, %struct._port_ectrs*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

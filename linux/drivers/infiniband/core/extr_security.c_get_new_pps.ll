; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_get_new_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_get_new_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ports_pkeys = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.ib_ports_pkeys* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__*, i32, i32 }
%struct.ib_qp = type { %struct.TYPE_6__* }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_PORT_PKEY_VALID = common dso_local global i8* null, align 8
@IB_PORT_PKEY_NOT_VALID = common dso_local global i64 0, align 8
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ports_pkeys* (%struct.ib_qp*, %struct.ib_qp_attr*, i32)* @get_new_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ports_pkeys* @get_new_pps(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_ports_pkeys*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_ports_pkeys*, align 8
  %9 = alloca %struct.ib_ports_pkeys*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %13, align 8
  store %struct.ib_ports_pkeys* %14, %struct.ib_ports_pkeys** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ib_ports_pkeys* @kzalloc(i32 48, i32 %15)
  store %struct.ib_ports_pkeys* %16, %struct.ib_ports_pkeys** %8, align 8
  %17 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %18 = icmp ne %struct.ib_ports_pkeys* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.ib_ports_pkeys* null, %struct.ib_ports_pkeys** %4, align 8
  br label %187

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %23 = load i32, i32* @IB_QP_PORT, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %20
  %28 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %29 = icmp ne %struct.ib_ports_pkeys* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %35 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %41 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  br label %80

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IB_QP_PORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %54 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %51, %48 ], [ %56, %52 ]
  %59 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %60 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  br label %75

70:                                               ; preds = %57
  %71 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %72 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %69, %66 ], [ %74, %70 ]
  %77 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %78 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %30
  %81 = load i8*, i8** @IB_PORT_PKEY_VALID, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %84 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %118

86:                                               ; preds = %20
  %87 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %88 = icmp ne %struct.ib_ports_pkeys* %87, null
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %91 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %95 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %98 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %102 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %105 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IB_PORT_PKEY_NOT_VALID, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %89
  %111 = load i8*, i8** @IB_PORT_PKEY_VALID, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %114 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %89
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %128 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %134 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load i8*, i8** @IB_PORT_PKEY_VALID, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %139 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  br label %173

141:                                              ; preds = %118
  %142 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %143 = icmp ne %struct.ib_ports_pkeys* %142, null
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %146 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %150 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %153 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %157 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %9, align 8
  %160 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IB_PORT_PKEY_NOT_VALID, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %144
  %166 = load i8*, i8** @IB_PORT_PKEY_VALID, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %169 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %144
  br label %172

172:                                              ; preds = %171, %141
  br label %173

173:                                              ; preds = %172, %123
  %174 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %175 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %178 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store %struct.TYPE_6__* %176, %struct.TYPE_6__** %179, align 8
  %180 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %181 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  %184 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %185, align 8
  %186 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %8, align 8
  store %struct.ib_ports_pkeys* %186, %struct.ib_ports_pkeys** %4, align 8
  br label %187

187:                                              ; preds = %173, %19
  %188 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  ret %struct.ib_ports_pkeys* %188
}

declare dso_local %struct.ib_ports_pkeys* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

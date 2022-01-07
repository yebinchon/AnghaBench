; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_5__, %struct.bnxt_qplib_rcfw* }
%struct.TYPE_5__ = type { i32* }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_ah = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cmdq_create_ah = type { i8**, i32, i8*, i8*, i8*, i32, i32, i8** }
%struct.creq_create_ah_resp = type { i32 }

@CREATE_AH = common dso_local global i32 0, align 4
@CMDQ_CREATE_AH_FLOW_LABEL_MASK = common dso_local global i32 0, align 4
@CMDQ_CREATE_AH_DEST_VLAN_ID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_create_ah(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_ah* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_ah*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %9 = alloca %struct.cmdq_create_ah, align 8
  %10 = alloca %struct.creq_create_ah_resp, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_ah* %1, %struct.bnxt_qplib_ah** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %15, i32 0, i32 1
  %17 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %16, align 8
  store %struct.bnxt_qplib_rcfw* %17, %struct.bnxt_qplib_rcfw** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @CREATE_AH, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @RCFW_CMD_PREP(%struct.cmdq_create_ah* byval(%struct.cmdq_create_ah) align 8 %9, i32 %18, i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %22 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memcpy(i32* %21, i32 %25, i32 4)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 7
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %29, i8** %32, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 7
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %35, i8** %38, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 7
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  store i8* %41, i8** %44, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 7
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  store i8* %47, i8** %50, align 8
  %51 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %52 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 6
  store i32 %53, i32* %54, align 4
  %55 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %64 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %71 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CMDQ_CREATE_AH_FLOW_LABEL_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CMDQ_CREATE_AH_DEST_VLAN_ID_MASK, align 4
  %76 = or i32 %74, %75
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %80 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  %86 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %87 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %91 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %92 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32* %90, i32 %93, i32 6)
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  store i8* %97, i8** %100, align 8
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* %103, i8** %106, align 8
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = getelementptr inbounds %struct.cmdq_create_ah, %struct.cmdq_create_ah* %9, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 2
  store i8* %109, i8** %112, align 8
  %113 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %8, align 8
  %114 = bitcast %struct.cmdq_create_ah* %9 to i8*
  %115 = bitcast %struct.creq_create_ah_resp* %10 to i8*
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %113, i8* %114, i8* %115, i32* null, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %3
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %128

122:                                              ; preds = %3
  %123 = getelementptr inbounds %struct.creq_create_ah_resp, %struct.creq_create_ah_resp* %10, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = load %struct.bnxt_qplib_ah*, %struct.bnxt_qplib_ah** %6, align 8
  %127 = getelementptr inbounds %struct.bnxt_qplib_ah, %struct.bnxt_qplib_ah* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %122, %120
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @RCFW_CMD_PREP(%struct.cmdq_create_ah* byval(%struct.cmdq_create_ah) align 8, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

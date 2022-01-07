; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_dev_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_dev_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_qplib_dev_attr = type { i32, i32, i32, i32, i32, i32, i32, i8**, i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64 }
%struct.cmdq_query_func = type { i32 }
%struct.creq_query_func_resp = type { i32 }
%struct.bnxt_qplib_rcfw_sbuf = type { %struct.creq_query_func_resp_sb* }
%struct.creq_query_func_resp_sb = type { i64, i64, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QUERY_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SP: QUERY_FUNC alloc side buffer failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BNXT_QPLIB_CMDQE_UNITS = common dso_local global i32 0, align 4
@BNXT_QPLIB_MAX_OUT_RD_ATOM = common dso_local global i64 0, align 8
@BNXT_QPLIB_RESERVED_QP_WRS = common dso_local global i64 0, align 8
@RCFW_DBR_BASE_PAGE_SHIFT = common dso_local global i32 0, align 4
@MAX_TQM_ALLOC_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_get_dev_attr(%struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_dev_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %6 = alloca %struct.bnxt_qplib_dev_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdq_query_func, align 4
  %9 = alloca %struct.creq_query_func_resp, align 4
  %10 = alloca %struct.bnxt_qplib_rcfw_sbuf*, align 8
  %11 = alloca %struct.creq_query_func_resp_sb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %5, align 8
  store %struct.bnxt_qplib_dev_attr* %1, %struct.bnxt_qplib_dev_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @QUERY_FUNC, align 4
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds %struct.cmdq_query_func, %struct.cmdq_query_func* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RCFW_CMD_PREP(i32 %20, i32 %17, i32 %18)
  %22 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %23 = call %struct.bnxt_qplib_rcfw_sbuf* @bnxt_qplib_rcfw_alloc_sbuf(%struct.bnxt_qplib_rcfw* %22, i32 104)
  store %struct.bnxt_qplib_rcfw_sbuf* %23, %struct.bnxt_qplib_rcfw_sbuf** %10, align 8
  %24 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %10, align 8
  %25 = icmp ne %struct.bnxt_qplib_rcfw_sbuf* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %312

34:                                               ; preds = %3
  %35 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %10, align 8
  %36 = getelementptr inbounds %struct.bnxt_qplib_rcfw_sbuf, %struct.bnxt_qplib_rcfw_sbuf* %35, i32 0, i32 0
  %37 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %36, align 8
  store %struct.creq_query_func_resp_sb* %37, %struct.creq_query_func_resp_sb** %11, align 8
  %38 = load i32, i32* @BNXT_QPLIB_CMDQE_UNITS, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 104, %39
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.cmdq_query_func, %struct.cmdq_query_func* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %44 = bitcast %struct.cmdq_query_func* %8 to i8*
  %45 = bitcast %struct.creq_query_func_resp* %9 to i8*
  %46 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %10, align 8
  %47 = bitcast %struct.bnxt_qplib_rcfw_sbuf* %46 to i8*
  %48 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %43, i8* %44, i8* %45, i8* %47, i32 0)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %307

52:                                               ; preds = %34
  %53 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %54 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %53, i32 0, i32 21
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %59 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %64 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %52
  %68 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %69 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BNXT_QPLIB_MAX_OUT_RD_ATOM, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* @BNXT_QPLIB_MAX_OUT_RD_ATOM, align 8
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %77 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i64 [ %74, %73 ], [ %78, %75 ]
  %81 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %82 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %81, i32 0, i32 25
  store i64 %80, i64* %82, align 8
  %83 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %84 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BNXT_QPLIB_MAX_OUT_RD_ATOM, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i64, i64* @BNXT_QPLIB_MAX_OUT_RD_ATOM, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %92 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i64 [ %89, %88 ], [ %93, %90 ]
  %96 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %97 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %96, i32 0, i32 24
  store i64 %95, i64* %97, align 8
  %98 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %99 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %98, i32 0, i32 20
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %103 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %102, i32 0, i32 23
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* @BNXT_QPLIB_RESERVED_QP_WRS, align 8
  %105 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %106 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %105, i32 0, i32 23
  %107 = load i8*, i8** %106, align 8
  %108 = sub i64 0, %104
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %106, align 8
  %110 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %111 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @bnxt_qplib_is_chip_gen_p5(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %94
  br label %122

118:                                              ; preds = %94
  %119 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %120 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  br label %122

122:                                              ; preds = %118, %117
  %123 = phi i32 [ 6, %117 ], [ %121, %118 ]
  %124 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %125 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %127 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %126, i32 0, i32 19
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @le32_to_cpu(i32 %128)
  %130 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %131 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %130, i32 0, i32 22
  store i8* %129, i8** %131, align 8
  %132 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %133 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %132, i32 0, i32 18
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le32_to_cpu(i32 %134)
  %136 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %137 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %136, i32 0, i32 21
  store i8* %135, i8** %137, align 8
  %138 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %139 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %142 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %144 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %143, i32 0, i32 17
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @le32_to_cpu(i32 %145)
  %147 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %148 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %147, i32 0, i32 20
  store i8* %146, i8** %148, align 8
  %149 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %150 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %149, i32 0, i32 16
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le32_to_cpu(i32 %151)
  %153 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %154 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %153, i32 0, i32 19
  store i8* %152, i8** %154, align 8
  %155 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %156 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %155, i32 0, i32 15
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @le64_to_cpu(i32 %157)
  %159 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %160 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %159, i32 0, i32 18
  store i32 %158, i32* %160, align 8
  %161 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %162 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %161, i32 0, i32 3
  store i32 65536, i32* %162, align 4
  %163 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %164 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %163, i32 0, i32 14
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @le32_to_cpu(i32 %165)
  %167 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %168 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %167, i32 0, i32 17
  store i8* %166, i8** %168, align 8
  %169 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %170 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %169, i32 0, i32 13
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @le32_to_cpu(i32 %171)
  %173 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %174 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %173, i32 0, i32 16
  store i8* %172, i8** %174, align 8
  %175 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %176 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @le32_to_cpu(i32 %177)
  %179 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %180 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %179, i32 0, i32 15
  store i8* %178, i8** %180, align 8
  %181 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %182 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %185 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %184, i32 0, i32 14
  store i32 %183, i32* %185, align 8
  %186 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %187 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le16_to_cpu(i32 %188)
  %190 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %191 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %190, i32 0, i32 13
  store i8* %189, i8** %191, align 8
  %192 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %193 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @le32_to_cpu(i32 %194)
  %196 = getelementptr i8, i8* %195, i64 -1
  %197 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %198 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %197, i32 0, i32 12
  store i8* %196, i8** %198, align 8
  %199 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %200 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %203 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %202, i32 0, i32 11
  store i32 %201, i32* %203, align 8
  %204 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %205 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @le32_to_cpu(i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %210 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %212 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %213, 65535
  br i1 %214, label %215, label %218

215:                                              ; preds = %122
  %216 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %217 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %216, i32 0, i32 4
  store i32 65535, i32* %217, align 8
  br label %218

218:                                              ; preds = %215, %122
  %219 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %220 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @le32_to_cpu(i32 %221)
  %223 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %224 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %223, i32 0, i32 10
  store i8* %222, i8** %224, align 8
  %225 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %226 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* @RCFW_DBR_BASE_PAGE_SHIFT, align 4
  %230 = shl i32 1, %229
  %231 = mul nsw i32 %228, %230
  %232 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %233 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 4
  %234 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %235 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i8* @le32_to_cpu(i32 %236)
  %238 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %239 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %238, i32 0, i32 9
  store i8* %237, i8** %239, align 8
  %240 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %241 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %242 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @bnxt_qplib_query_version(%struct.bnxt_qplib_rcfw* %240, i32 %243)
  store i32 0, i32* %15, align 4
  br label %245

245:                                              ; preds = %301, %218
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* @MAX_TQM_ALLOC_REQ, align 4
  %248 = sdiv i32 %247, 4
  %249 = icmp slt i32 %246, %248
  br i1 %249, label %250, label %304

250:                                              ; preds = %245
  %251 = load %struct.creq_query_func_resp_sb*, %struct.creq_query_func_resp_sb** %11, align 8
  %252 = getelementptr inbounds %struct.creq_query_func_resp_sb, %struct.creq_query_func_resp_sb* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @le32_to_cpu(i32 %257)
  store i8* %258, i8** %13, align 8
  store i8** %13, i8*** %14, align 8
  %259 = load i8**, i8*** %14, align 8
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %262 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %261, i32 0, i32 7
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = mul nsw i32 %264, 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %263, i64 %266
  store i8* %260, i8** %267, align 8
  %268 = load i8**, i8*** %14, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i32 1
  store i8** %269, i8*** %14, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %272 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %271, i32 0, i32 7
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = mul nsw i32 %274, 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %273, i64 %277
  store i8* %270, i8** %278, align 8
  %279 = load i8**, i8*** %14, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i32 1
  store i8** %280, i8*** %14, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %283 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %282, i32 0, i32 7
  %284 = load i8**, i8*** %283, align 8
  %285 = load i32, i32* %15, align 4
  %286 = mul nsw i32 %285, 4
  %287 = add nsw i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %284, i64 %288
  store i8* %281, i8** %289, align 8
  %290 = load i8**, i8*** %14, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i32 1
  store i8** %291, i8*** %14, align 8
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %294 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %293, i32 0, i32 7
  %295 = load i8**, i8*** %294, align 8
  %296 = load i32, i32* %15, align 4
  %297 = mul nsw i32 %296, 4
  %298 = add nsw i32 %297, 3
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %295, i64 %299
  store i8* %292, i8** %300, align 8
  br label %301

301:                                              ; preds = %250
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %15, align 4
  br label %245

304:                                              ; preds = %245
  %305 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %6, align 8
  %306 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %305, i32 0, i32 6
  store i32 0, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %51
  %308 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %309 = load %struct.bnxt_qplib_rcfw_sbuf*, %struct.bnxt_qplib_rcfw_sbuf** %10, align 8
  %310 = call i32 @bnxt_qplib_rcfw_free_sbuf(%struct.bnxt_qplib_rcfw* %308, %struct.bnxt_qplib_rcfw_sbuf* %309)
  %311 = load i32, i32* %16, align 4
  store i32 %311, i32* %4, align 4
  br label %312

312:                                              ; preds = %307, %26
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i32 @RCFW_CMD_PREP(i32, i32, i32) #1

declare dso_local %struct.bnxt_qplib_rcfw_sbuf* @bnxt_qplib_rcfw_alloc_sbuf(%struct.bnxt_qplib_rcfw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @bnxt_qplib_is_chip_gen_p5(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @bnxt_qplib_query_version(%struct.bnxt_qplib_rcfw*, i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_free_sbuf(%struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw_sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

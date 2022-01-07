; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_remove_mad_reg_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_remove_mad_reg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.ib_mad_port_private* }
%struct.ib_mad_port_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table* }
%struct.ib_mad_mgmt_vendor_class_table = type { %struct.ib_mad_mgmt_vendor_class_table**, i32*, %struct.ib_mad_mgmt_vendor_class_table** }
%struct.ib_mad_mgmt_class_table = type { %struct.ib_mad_mgmt_class_table**, i32*, %struct.ib_mad_mgmt_class_table** }
%struct.ib_mad_mgmt_method_table = type { %struct.ib_mad_mgmt_method_table**, i32*, %struct.ib_mad_mgmt_method_table** }
%struct.ib_mad_mgmt_vendor_class = type { %struct.ib_mad_mgmt_vendor_class**, i32*, %struct.ib_mad_mgmt_vendor_class** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*)* @remove_mad_reg_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_mad_reg_req(%struct.ib_mad_agent_private* %0) #0 {
  %2 = alloca %struct.ib_mad_agent_private*, align 8
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca %struct.ib_mad_mgmt_class_table*, align 8
  %5 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %6 = alloca %struct.ib_mad_mgmt_vendor_class_table*, align 8
  %7 = alloca %struct.ib_mad_mgmt_vendor_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %2, align 8
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %211

15:                                               ; preds = %1
  %16 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %17 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %19, align 8
  store %struct.ib_mad_port_private* %20, %struct.ib_mad_port_private** %3, align 8
  %21 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %22 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @convert_mgmt_class(i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %28 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %31 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %36, align 8
  %38 = bitcast %struct.ib_mad_mgmt_vendor_class_table* %37 to %struct.ib_mad_mgmt_class_table*
  store %struct.ib_mad_mgmt_class_table* %38, %struct.ib_mad_mgmt_class_table** %4, align 8
  %39 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %4, align 8
  %40 = icmp ne %struct.ib_mad_mgmt_class_table* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %15
  br label %91

42:                                               ; preds = %15
  %43 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %4, align 8
  %44 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %43, i32 0, i32 2
  %45 = load %struct.ib_mad_mgmt_class_table**, %struct.ib_mad_mgmt_class_table*** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %45, i64 %46
  %48 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %47, align 8
  %49 = bitcast %struct.ib_mad_mgmt_class_table* %48 to %struct.ib_mad_mgmt_method_table*
  store %struct.ib_mad_mgmt_method_table* %49, %struct.ib_mad_mgmt_method_table** %5, align 8
  %50 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %51 = icmp ne %struct.ib_mad_mgmt_method_table* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %42
  %53 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %54 = bitcast %struct.ib_mad_mgmt_method_table* %53 to %struct.ib_mad_mgmt_vendor_class_table*
  %55 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %56 = call i32 @remove_methods_mad_agent(%struct.ib_mad_mgmt_vendor_class_table* %54, %struct.ib_mad_agent_private* %55)
  %57 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %58 = bitcast %struct.ib_mad_mgmt_method_table* %57 to %struct.ib_mad_mgmt_vendor_class_table*
  %59 = call i32 @check_method_table(%struct.ib_mad_mgmt_vendor_class_table* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %52
  %62 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %63 = bitcast %struct.ib_mad_mgmt_method_table* %62 to %struct.ib_mad_mgmt_vendor_class_table*
  %64 = call i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table* %63)
  %65 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %4, align 8
  %66 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %65, i32 0, i32 2
  %67 = load %struct.ib_mad_mgmt_class_table**, %struct.ib_mad_mgmt_class_table*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %67, i64 %68
  store %struct.ib_mad_mgmt_class_table* null, %struct.ib_mad_mgmt_class_table** %69, align 8
  %70 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %4, align 8
  %71 = bitcast %struct.ib_mad_mgmt_class_table* %70 to %struct.ib_mad_mgmt_vendor_class_table*
  %72 = call i32 @check_class_table(%struct.ib_mad_mgmt_vendor_class_table* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %61
  %75 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %4, align 8
  %76 = bitcast %struct.ib_mad_mgmt_class_table* %75 to %struct.ib_mad_mgmt_vendor_class_table*
  %77 = call i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table* %76)
  %78 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %79 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %82 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store %struct.ib_mad_mgmt_vendor_class_table* null, %struct.ib_mad_mgmt_vendor_class_table** %87, align 8
  br label %88

88:                                               ; preds = %74, %61
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %42
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @is_vendor_class(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %211

96:                                               ; preds = %91
  %97 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %98 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @vendor_class_index(i32 %101)
  store i64 %102, i64* %9, align 8
  %103 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %104 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %107 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %112, align 8
  store %struct.ib_mad_mgmt_vendor_class_table* %113, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %114 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %115 = icmp ne %struct.ib_mad_mgmt_vendor_class_table* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %96
  br label %211

117:                                              ; preds = %96
  %118 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %119 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table, %struct.ib_mad_mgmt_vendor_class_table* %118, i32 0, i32 0
  %120 = load %struct.ib_mad_mgmt_vendor_class_table**, %struct.ib_mad_mgmt_vendor_class_table*** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %120, i64 %121
  %123 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %122, align 8
  %124 = bitcast %struct.ib_mad_mgmt_vendor_class_table* %123 to %struct.ib_mad_mgmt_vendor_class*
  store %struct.ib_mad_mgmt_vendor_class* %124, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %125 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %126 = icmp ne %struct.ib_mad_mgmt_vendor_class* %125, null
  br i1 %126, label %127, label %210

127:                                              ; preds = %117
  %128 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %129 = bitcast %struct.ib_mad_mgmt_vendor_class* %128 to %struct.ib_mad_mgmt_vendor_class_table*
  %130 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %131 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @find_vendor_oui(%struct.ib_mad_mgmt_vendor_class_table* %129, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %211

139:                                              ; preds = %127
  %140 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %141 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %140, i32 0, i32 2
  %142 = load %struct.ib_mad_mgmt_vendor_class**, %struct.ib_mad_mgmt_vendor_class*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %142, i64 %144
  %146 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %145, align 8
  %147 = bitcast %struct.ib_mad_mgmt_vendor_class* %146 to %struct.ib_mad_mgmt_method_table*
  store %struct.ib_mad_mgmt_method_table* %147, %struct.ib_mad_mgmt_method_table** %5, align 8
  %148 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %149 = icmp ne %struct.ib_mad_mgmt_method_table* %148, null
  br i1 %149, label %150, label %209

150:                                              ; preds = %139
  %151 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %152 = bitcast %struct.ib_mad_mgmt_method_table* %151 to %struct.ib_mad_mgmt_vendor_class_table*
  %153 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %154 = call i32 @remove_methods_mad_agent(%struct.ib_mad_mgmt_vendor_class_table* %152, %struct.ib_mad_agent_private* %153)
  %155 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %156 = bitcast %struct.ib_mad_mgmt_method_table* %155 to %struct.ib_mad_mgmt_vendor_class_table*
  %157 = call i32 @check_method_table(%struct.ib_mad_mgmt_vendor_class_table* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %208, label %159

159:                                              ; preds = %150
  %160 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %5, align 8
  %161 = bitcast %struct.ib_mad_mgmt_method_table* %160 to %struct.ib_mad_mgmt_vendor_class_table*
  %162 = call i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table* %161)
  %163 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %164 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %163, i32 0, i32 2
  %165 = load %struct.ib_mad_mgmt_vendor_class**, %struct.ib_mad_mgmt_vendor_class*** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %165, i64 %167
  store %struct.ib_mad_mgmt_vendor_class* null, %struct.ib_mad_mgmt_vendor_class** %168, align 8
  %169 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %170 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @memset(i32 %175, i32 0, i32 3)
  %177 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %178 = bitcast %struct.ib_mad_mgmt_vendor_class* %177 to %struct.ib_mad_mgmt_vendor_class_table*
  %179 = call i32 @check_vendor_class(%struct.ib_mad_mgmt_vendor_class_table* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %207, label %181

181:                                              ; preds = %159
  %182 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %7, align 8
  %183 = bitcast %struct.ib_mad_mgmt_vendor_class* %182 to %struct.ib_mad_mgmt_vendor_class_table*
  %184 = call i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table* %183)
  %185 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %186 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table, %struct.ib_mad_mgmt_vendor_class_table* %185, i32 0, i32 0
  %187 = load %struct.ib_mad_mgmt_vendor_class_table**, %struct.ib_mad_mgmt_vendor_class_table*** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %187, i64 %188
  store %struct.ib_mad_mgmt_vendor_class_table* null, %struct.ib_mad_mgmt_vendor_class_table** %189, align 8
  %190 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %191 = call i32 @check_vendor_table(%struct.ib_mad_mgmt_vendor_class_table* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %181
  %194 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %6, align 8
  %195 = call i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table* %194)
  %196 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %197 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %200 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  store %struct.ib_mad_mgmt_vendor_class_table* null, %struct.ib_mad_mgmt_vendor_class_table** %205, align 8
  br label %206

206:                                              ; preds = %193, %181
  br label %207

207:                                              ; preds = %206, %159
  br label %208

208:                                              ; preds = %207, %150
  br label %209

209:                                              ; preds = %208, %139
  br label %210

210:                                              ; preds = %209, %117
  br label %211

211:                                              ; preds = %210, %138, %116, %95, %14
  ret void
}

declare dso_local i64 @convert_mgmt_class(i32) #1

declare dso_local i32 @remove_methods_mad_agent(%struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_agent_private*) #1

declare dso_local i32 @check_method_table(%struct.ib_mad_mgmt_vendor_class_table*) #1

declare dso_local i32 @kfree(%struct.ib_mad_mgmt_vendor_class_table*) #1

declare dso_local i32 @check_class_table(%struct.ib_mad_mgmt_vendor_class_table*) #1

declare dso_local i32 @is_vendor_class(i64) #1

declare dso_local i64 @vendor_class_index(i32) #1

declare dso_local i32 @find_vendor_oui(%struct.ib_mad_mgmt_vendor_class_table*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @check_vendor_class(%struct.ib_mad_mgmt_vendor_class_table*) #1

declare dso_local i32 @check_vendor_table(%struct.ib_mad_mgmt_vendor_class_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

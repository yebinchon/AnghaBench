; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i64, %struct.fw_node*, %struct.fw_node*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.fw_node = type { i64, i64, %struct.list_head, %struct.TYPE_4__**, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, %struct.list_head }

@FW_NODE_LINK_OFF = common dso_local global i32 0, align 4
@FW_NODE_LINK_ON = common dso_local global i32 0, align 4
@FW_NODE_INITIATED_RESET = common dso_local global i32 0, align 4
@FW_NODE_UPDATED = common dso_local global i32 0, align 4
@report_lost_node = common dso_local global i32 0, align 4
@report_found_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_node*)* @update_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tree(%struct.fw_card* %0, %struct.fw_node* %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca %struct.fw_node*, align 8
  %5 = alloca %struct.list_head, align 4
  %6 = alloca %struct.list_head, align 4
  %7 = alloca %struct.fw_node*, align 8
  %8 = alloca %struct.fw_node*, align 8
  %9 = alloca %struct.fw_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store %struct.fw_node* %1, %struct.fw_node** %4, align 8
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %13 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %14 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @list_add_tail(%struct.list_head* %16, %struct.list_head* %5)
  %18 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  %19 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  %20 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %19, i32 0, i32 2
  %21 = call i32 @list_add_tail(%struct.list_head* %20, %struct.list_head* %6)
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.fw_node* @fw_node(i32 %23)
  store %struct.fw_node* %24, %struct.fw_node** %7, align 8
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.fw_node* @fw_node(i32 %26)
  store %struct.fw_node* %27, %struct.fw_node** %8, align 8
  br label %28

28:                                               ; preds = %251, %2
  %29 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %29, i32 0, i32 2
  %31 = icmp ne %struct.list_head* %30, %5
  br i1 %31, label %32, label %265

32:                                               ; preds = %28
  %33 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %34 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %37 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %43 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %48 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @FW_NODE_LINK_OFF, align 4
  store i32 %52, i32* %11, align 4
  br label %81

53:                                               ; preds = %46, %32
  %54 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %55 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %60 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @FW_NODE_LINK_ON, align 4
  store i32 %64, i32* %11, align 4
  br label %80

65:                                               ; preds = %58, %53
  %66 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %67 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %72 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @FW_NODE_INITIATED_RESET, align 4
  store i32 %76, i32* %11, align 4
  br label %79

77:                                               ; preds = %70, %65
  %78 = load i32, i32* @FW_NODE_UPDATED, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %83 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %86 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %88 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %91 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %93 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %96 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %95, i32 0, i32 6
  store i64 %94, i64* %96, align 8
  %97 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %98 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %101 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %103 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %106 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %108 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %111 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %113 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @fw_node_event(%struct.fw_card* %112, %struct.fw_node* %113, i32 %114)
  %116 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %117 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %116, i32 0, i32 2
  %118 = load %struct.fw_node*, %struct.fw_node** %117, align 8
  %119 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %120 = icmp eq %struct.fw_node* %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %81
  %122 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %123 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %124 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %123, i32 0, i32 2
  store %struct.fw_node* %122, %struct.fw_node** %124, align 8
  br label %125

125:                                              ; preds = %121, %81
  %126 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %127 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %126, i32 0, i32 1
  %128 = load %struct.fw_node*, %struct.fw_node** %127, align 8
  %129 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %130 = icmp eq %struct.fw_node* %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %133 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %134 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %133, i32 0, i32 1
  store %struct.fw_node* %132, %struct.fw_node** %134, align 8
  br label %135

135:                                              ; preds = %131, %125
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %248, %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %140 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %143, label %251

143:                                              ; preds = %136
  %144 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %145 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %144, i32 0, i32 3
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = icmp ne %struct.TYPE_4__* %150, null
  br i1 %151, label %152, label %195

152:                                              ; preds = %143
  %153 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %154 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = icmp ne %struct.TYPE_4__* %159, null
  br i1 %160, label %161, label %195

161:                                              ; preds = %152
  %162 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %163 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %164, i64 %166
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %172 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %248

176:                                              ; preds = %161
  %177 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %178 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %179, i64 %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = call i32 @list_add_tail(%struct.list_head* %184, %struct.list_head* %5)
  %186 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %187 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %186, i32 0, i32 3
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %188, i64 %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = call i32 @list_add_tail(%struct.list_head* %193, %struct.list_head* %6)
  br label %247

195:                                              ; preds = %152, %143
  %196 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %197 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %196, i32 0, i32 3
  %198 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %198, i64 %200
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = icmp ne %struct.TYPE_4__* %202, null
  br i1 %203, label %204, label %221

204:                                              ; preds = %195
  %205 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %206 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %207 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %206, i32 0, i32 3
  %208 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %208, i64 %210
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* @report_lost_node, align 4
  %214 = call i32 @for_each_fw_node(%struct.fw_card* %205, %struct.TYPE_4__* %212, i32 %213)
  %215 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %216 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %215, i32 0, i32 3
  %217 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %217, i64 %219
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %220, align 8
  br label %246

221:                                              ; preds = %195
  %222 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %223 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %222, i32 0, i32 3
  %224 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %224, i64 %226
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = icmp ne %struct.TYPE_4__* %228, null
  br i1 %229, label %230, label %245

230:                                              ; preds = %221
  %231 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %232 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @move_tree(%struct.fw_node* %231, %struct.fw_node* %232, i32 %233)
  %235 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %236 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %237 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %236, i32 0, i32 3
  %238 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %238, i64 %240
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = load i32, i32* @report_found_node, align 4
  %244 = call i32 @for_each_fw_node(%struct.fw_card* %235, %struct.TYPE_4__* %242, i32 %243)
  br label %245

245:                                              ; preds = %230, %221
  br label %246

246:                                              ; preds = %245, %204
  br label %247

247:                                              ; preds = %246, %176
  br label %248

248:                                              ; preds = %247, %175
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %136

251:                                              ; preds = %136
  %252 = load %struct.fw_node*, %struct.fw_node** %7, align 8
  %253 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.list_head, %struct.list_head* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call %struct.fw_node* @fw_node(i32 %255)
  store %struct.fw_node* %256, %struct.fw_node** %7, align 8
  %257 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %258 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.list_head, %struct.list_head* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call %struct.fw_node* @fw_node(i32 %260)
  store %struct.fw_node* %261, %struct.fw_node** %9, align 8
  %262 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %263 = call i32 @fw_node_put(%struct.fw_node* %262)
  %264 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  store %struct.fw_node* %264, %struct.fw_node** %8, align 8
  br label %28

265:                                              ; preds = %28
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local %struct.fw_node* @fw_node(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fw_node_event(%struct.fw_card*, %struct.fw_node*, i32) #1

declare dso_local i32 @for_each_fw_node(%struct.fw_card*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @move_tree(%struct.fw_node*, %struct.fw_node*, i32) #1

declare dso_local i32 @fw_node_put(%struct.fw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

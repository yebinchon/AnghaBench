; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_build_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_build_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_node = type { i32, i64, %struct.TYPE_2__, %struct.fw_node** }
%struct.TYPE_2__ = type { %struct.list_head* }
%struct.list_head = type { %struct.list_head* }
%struct.fw_card = type { i64, i32, i32, i32, %struct.fw_node*, %struct.fw_node* }

@.str = private unnamed_addr constant [32 x i8] c"inconsistent extended self IDs\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"PHY ID mismatch in self ID: %d != %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"topology stack underflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"out of memory while building topology\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"parent port inconsistency for node %d: parent_count=%d\0A\00", align 1
@SCODE_BETA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_node* (%struct.fw_card*, i32*, i32)* @build_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_node* @build_tree(%struct.fw_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_node*, align 8
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_node*, align 8
  %9 = alloca %struct.fw_node*, align 8
  %10 = alloca %struct.fw_node*, align 8
  %11 = alloca %struct.fw_node*, align 8
  %12 = alloca %struct.list_head, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fw_node* null, %struct.fw_node** %10, align 8
  store %struct.fw_node* null, %struct.fw_node** %8, align 8
  %25 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  store i32 0, i32* %22, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %15, align 8
  store i32 0, i32* %20, align 4
  store %struct.fw_node* null, %struct.fw_node** %11, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SELF_ID_GAP_COUNT(i32 %31)
  store i32 %32, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %33

33:                                               ; preds = %201, %3
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %207

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @count_ports(i32* %38, i32* %18, i32* %19)
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %44 = call i32 (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %221

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @SELF_ID_PHY_ID(i32 %49)
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @SELF_ID_PHY_ID(i32 %55)
  %57 = call i32 (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56)
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %221

58:                                               ; preds = %45
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %64 = call i32 (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %221

65:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  store %struct.list_head* %12, %struct.list_head** %13, align 8
  br label %66

66:                                               ; preds = %74, %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.list_head*, %struct.list_head** %13, align 8
  %72 = getelementptr inbounds %struct.list_head, %struct.list_head* %71, i32 0, i32 0
  %73 = load %struct.list_head*, %struct.list_head** %72, align 8
  store %struct.list_head* %73, %struct.list_head** %13, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.list_head*, %struct.list_head** %13, align 8
  %79 = call %struct.fw_node* @fw_node(%struct.list_head* %78)
  store %struct.fw_node* %79, %struct.fw_node** %9, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %83 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call %struct.fw_node* @fw_node_create(i32 %80, i32 %81, i64 %84)
  store %struct.fw_node* %85, %struct.fw_node** %8, align 8
  %86 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %87 = icmp eq %struct.fw_node* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %90 = call i32 (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %221

91:                                               ; preds = %77
  %92 = load i32, i32* %20, align 4
  %93 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %94 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 63
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  store %struct.fw_node* %99, %struct.fw_node** %10, align 8
  br label %100

100:                                              ; preds = %98, %91
  %101 = load i32, i32* %16, align 4
  %102 = call i64 @SELF_ID_CONTENDER(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  store %struct.fw_node* %105, %struct.fw_node** %11, align 8
  br label %106

106:                                              ; preds = %104, %100
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %150, %106
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %153

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @get_port_type(i32* %112, i32 %113)
  switch i32 %114, label %149 [
    i32 128, label %115
    i32 129, label %121
  ]

115:                                              ; preds = %111
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %120 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %149

121:                                              ; preds = %111
  %122 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %123 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %124 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %123, i32 0, i32 3
  %125 = load %struct.fw_node**, %struct.fw_node*** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %125, i64 %127
  store %struct.fw_node* %122, %struct.fw_node** %128, align 8
  %129 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %130 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %131 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %130, i32 0, i32 3
  %132 = load %struct.fw_node**, %struct.fw_node*** %131, align 8
  %133 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %134 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %132, i64 %136
  store %struct.fw_node* %129, %struct.fw_node** %137, align 8
  %138 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %139 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %143 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %145 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load %struct.list_head*, %struct.list_head** %146, align 8
  %148 = call %struct.fw_node* @fw_node(%struct.list_head* %147)
  store %struct.fw_node* %148, %struct.fw_node** %9, align 8
  br label %149

149:                                              ; preds = %111, %121, %115
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %107

153:                                              ; preds = %107
  %154 = load i32*, i32** %14, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = icmp eq i32* %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %157, %153
  %161 = load i32*, i32** %14, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = icmp ult i32* %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %164, %157
  %168 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = call i32 (%struct.fw_card*, i8*, ...) @fw_err(%struct.fw_card* %168, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %170)
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %221

172:                                              ; preds = %164, %160
  %173 = load %struct.list_head*, %struct.list_head** %13, align 8
  %174 = getelementptr inbounds %struct.list_head, %struct.list_head* %173, i32 0, i32 0
  %175 = load %struct.list_head*, %struct.list_head** %174, align 8
  %176 = call i32 @__list_del(%struct.list_head* %175, %struct.list_head* %12)
  %177 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %178 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %177, i32 0, i32 2
  %179 = call i32 @list_add_tail(%struct.TYPE_2__* %178, %struct.list_head* %12)
  %180 = load i32, i32* %19, align 4
  %181 = sub nsw i32 1, %180
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %22, align 4
  %184 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %185 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @SCODE_BETA, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %172
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %190, %191
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 1, i32* %24, align 4
  br label %195

195:                                              ; preds = %194, %189, %172
  %196 = load i32, i32* %16, align 4
  %197 = call i32 @SELF_ID_GAP_COUNT(i32 %196)
  %198 = load i32, i32* %23, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 0, i32* %23, align 4
  br label %201

201:                                              ; preds = %200, %195
  %202 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %203 = call i32 @update_hop_count(%struct.fw_node* %202)
  %204 = load i32*, i32** %14, align 8
  store i32* %204, i32** %6, align 8
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %33

207:                                              ; preds = %33
  %208 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %209 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %210 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %209, i32 0, i32 5
  store %struct.fw_node* %208, %struct.fw_node** %210, align 8
  %211 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %212 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %213 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %212, i32 0, i32 4
  store %struct.fw_node* %211, %struct.fw_node** %213, align 8
  %214 = load i32, i32* %23, align 4
  %215 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %216 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %24, align 4
  %218 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %219 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 8
  %220 = load %struct.fw_node*, %struct.fw_node** %10, align 8
  store %struct.fw_node* %220, %struct.fw_node** %4, align 8
  br label %221

221:                                              ; preds = %207, %167, %88, %62, %52, %42
  %222 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  ret %struct.fw_node* %222
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @SELF_ID_GAP_COUNT(i32) #1

declare dso_local i32* @count_ports(i32*, i32*, i32*) #1

declare dso_local i32 @fw_err(%struct.fw_card*, i8*, ...) #1

declare dso_local i32 @SELF_ID_PHY_ID(i32) #1

declare dso_local %struct.fw_node* @fw_node(%struct.list_head*) #1

declare dso_local %struct.fw_node* @fw_node_create(i32, i32, i64) #1

declare dso_local i64 @SELF_ID_CONTENDER(i32) #1

declare dso_local i32 @get_port_type(i32*, i32) #1

declare dso_local i32 @__list_del(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_2__*, %struct.list_head*) #1

declare dso_local i32 @update_hop_count(%struct.fw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
